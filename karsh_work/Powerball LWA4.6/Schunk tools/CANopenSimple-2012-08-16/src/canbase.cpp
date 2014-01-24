/*
 * canbase.cpp
 *
 * Implementation of base CAN object to communicate via CAN-bus
 * using PEAK USB to CAN converter.
 *
 *  Created on: 13.02.2012
 *      Author: osswald2
 */

#include <iostream>
#include <sstream>
#include <assert.h>
#include <errno.h>

#include "canbase.h"
#include "helper.h"

using namespace std;

char const*
PEAK_strerror( DWORD rc )
{
    switch (rc)
    {
    DEFINE_TO_CASECOMMAND( CAN_ERR_OK);
    DEFINE_TO_CASECOMMAND( CAN_ERR_XMTFULL);
    DEFINE_TO_CASECOMMAND( CAN_ERR_OVERRUN);
    DEFINE_TO_CASECOMMAND( CAN_ERR_BUSLIGHT);
    DEFINE_TO_CASECOMMAND( CAN_ERR_BUSHEAVY);
    DEFINE_TO_CASECOMMAND( CAN_ERR_BUSOFF);
    DEFINE_TO_CASECOMMAND( CAN_ERR_QRCVEMPTY);
    DEFINE_TO_CASECOMMAND( CAN_ERR_QOVERRUN);
    DEFINE_TO_CASECOMMAND( CAN_ERR_QXMTFULL);
    DEFINE_TO_CASECOMMAND( CAN_ERR_REGTEST);
    DEFINE_TO_CASECOMMAND( CAN_ERR_NOVXD);
    DEFINE_TO_CASECOMMAND( CAN_ERR_RESOURCE);
    DEFINE_TO_CASECOMMAND( CAN_ERR_ILLPARAMTYPE);
    DEFINE_TO_CASECOMMAND( CAN_ERR_ILLPARAMVAL);
    default:
        return "unknown";
    }
}
//-----------------------------------------------------------------

cCANBase::cCANBase( void )
{

#if defined( OSNAME_LINUX )
    strncpy( m_device, "/dev/pcanusb0", 64);
    peak_handle = LINUX_CAN_Open((char*) m_device, O_RDWR ); //| O_NONBLOCK);
    if (peak_handle == NULL)
    {
        rc = nGetLastError();
        // open failed, so ensure that handle is invalid
        peak_handle = NULL;
        stringstream msg;
        msg << "Could not open PEAK CAN device \"" << m_device << ""\": " << GetLastErrorMessage() );
        throw cCANBaseException( msg.str() );
    }
    timeout_us = 10000;
#else
    strncpy(m_device, "PCAN-USB", 64);
    peak_handle = (PCAN_HANDLE) 1; // nothing more to do on cygwin/windows
#endif

    rc = CAN_Init( USE_HANDLES( peak_handle ) WORD(CAN_BAUD_500K),
                  CAN_INIT_TYPE_ST);
    if (rc)
    {
        if (rc == CAN_ERR_BUSLIGHT)
        {
            cerr << "Ignoring CAN_ERR_BUSLIGHT\n";
        }
        else
        {
#if ! defined( OSNAME_LINUX )
            peak_handle = NULL;
#endif
            stringstream msg;
            msg << "Could not set baudrate code " << CAN_BAUD_500K
                            << " on Peak CAN device \"" << m_device << "\": "
                            << GetLastErrorMessage();
            throw cCANBaseException(msg.str());
        }
    }

    rc = CAN_ResetFilter( USE_HANDLE(peak_handle));
    if (rc)
    {
        if (rc == CAN_ERR_BUSLIGHT)
        {
            cerr << "Ignoring CAN_ERR_BUSLIGHT\n";
        }
        else
        {
#if ! defined( OSNAME_LINUX )
            peak_handle = NULL;
#endif
            stringstream msg;
            msg << "Could not reset filter on Peak CAN device \"" << m_device
                            << "\": " << GetLastErrorMessage();
            throw cCANBaseException(msg.str());
        }
    }

#if 0
    rc = CAN_MsgFilter( USE_HANDLES(peak_handle) DWORD(id_read), DWORD(id_read), MSGTYPE_STANDARD);
    if ( rc )
    {
        if ( rc == CAN_ERR_BUSLIGHT )
        {
            cerr << "Ignoring CAN_ERR_BUSLIGHT\n";
        }
        else
        {
#if ! defined( OSNAME_LINUX )
            peak_handle = NULL;
#endif
            stringstream msg;
            msg << "Could not add CAN ID 0x" << setfill( '0' ) << setw (3) << hex << (unsigned int) id_read << " on Peak CAN device \"" << m_device << "\": " << GetLastErrorMessage();
            throw cCANBaseException( msg.str() );
        }
    }
#endif

    // (re)init member data:
    M_CMSG_MSG().LEN = 0;

    for (int i = 0; i < 2048; i++)
    {
        M_CMSG_MSG_LAST(i).ID = 0;
    }
}
//----------------------------------------------------------------------

char const*
cCANBase::GetErrorMessage( DWORD dw )
{
    static char return_msg[512];

    snprintf(return_msg, 511, "error 0x%x = %d = \"%s\"", (int) dw, (int) dw,
             PEAK_strerror((DWORD) rc));
    return return_msg;
}
//----------------------------------------------------------------------

void
cCANBase::WriteData( DWORD id, int dlen, unsigned char const* ptr )
{
    assert( peak_handle != NULL);
    assert( dlen >= 0);
    assert( dlen <= 8);

    //---------------------
    TPCANMsg cmsg;
    cmsg.ID = DWORD(id);
    cmsg.LEN = dlen;
    cmsg.MSGTYPE = MSGTYPE_STANDARD;
    for (int i = 0; i < dlen; i++)
    {
        // prepare message to send:
        cmsg.DATA[i] = *(ptr++);
    }

    //-----
    // now send the cmsgs and check return values
#if defined( OSNAME_LINUX )
    rc = LINUX_CAN_Write_Timeout(peak_handle, &cmsg, timeout_us );
#else
    rc = CAN_Write(&cmsg);
#endif
    if (rc)
    {
        if (rc == CAN_ERR_BUSLIGHT)
        {
            cerr << "Ignoring CAN_ERR_BUSLIGHT\n";
        }
        else
        {
            stringstream msg;
            msg << "Could not write message with dlen " << dlen
                            << " on Peak CAN device \"" << m_device << "\": "
                            << GetLastErrorMessage();
            throw cCANBaseException(msg.str());
        }
    } DBG( cerr << "cCANBase::WriteData wrote CAN frame ID:0x" << setfill('0') << setw(3) << hex << cmsg.ID << " LEN=" << int(cmsg.LEN) << " DATA (hex):" << cHexByteString( (char const*) cmsg.DATA, cmsg.LEN ) << "\n" );

}
//----------------------------------------------------------------------

int
cCANBase::ReadData( unsigned short id, unsigned char *data )
{
    assert( peak_handle != NULL);
    assert( id >= 0);
    assert( id < 2048);

    int bytes_read = 0;

    // message already received before?
    if (M_CMSG_MSG_LAST(id).ID == id)
    {
        // yes, so return old data
        for (bytes_read = 0; bytes_read < M_CMSG_MSG_LAST(id).LEN; bytes_read++)
            *data++ = M_CMSG_MSG_LAST(id).DATA[bytes_read];
        DBG( cerr << "cCANBase::ReadData read old CAN frame ID:0x" << hex << M_CMSG_MSG_LAST(id).ID << " LEN=" << int(M_CMSG_MSG_LAST(id).LEN) << " DATA (hex):" << cHexByteString( (char const*) M_CMSG_MSG_LAST(id).DATA, M_CMSG_MSG_LAST(id).LEN ) << "\n" );

        M_CMSG_MSG_LAST(id).ID = 0; // mark as invalid
        return bytes_read;
    }
    // no, try to receive new data

    while (1)
    {
        M_CMSG_MSG().LEN = 0;

        rc = CAN_Read(&(m_cmsg));

        //-----
        // check the received message:

        // simple check: return code of the Read call:
        //dbg << "rc=" << rc << "\n";
        if (rc == 0xFFFFFFFF)
        {
            // ANOTE: although undocumented this seems to be the "no data available" answer when timeout=0

            DBG( cerr << "***Ignoring error rc=-1  errno=" << errno << "=\"" << strerror( errno ) << "\"\n" );
            continue;
            //return bytes_read;
        }

        if (rc > 0)
        {
            M_CMSG_MSG().LEN = 0;

            //if ( (r_timeout_us == 0 || return_on_less_data) &&  rc == CAN_ERR_QRCVEMPTY )
            if (rc == CAN_ERR_QRCVEMPTY)
            {
                // no error, just no more data available
                //DBG( cerr << "cCANBase::ReadData no more data available\n" );
                return bytes_read;
            }
            if (rc == CAN_ERR_BUSLIGHT)
            {
                cerr << "Ignoring CAN_ERR_BUSLIGHT\n";
                return bytes_read;
            }
            stringstream msg;
            msg << "Could not read CAN messages  from Peak CAN device \""
                            << m_device << "\": " << GetLastErrorMessage();
            throw cCANBaseException(msg.str());
        }

        // check the actual type of the returned message:
        if (M_CMSG_MSG().MSGTYPE != MSGTYPE_STANDARD)
        {
            M_CMSG_MSG().LEN = 0;
            if (M_CMSG_MSG().MSGTYPE == MSGTYPE_EXTENDED
                            || M_CMSG_MSG().MSGTYPE == MSGTYPE_RTR)
            {
                cerr << "Ignoring invalid CAN message of type "
                                << M_CMSG_MSG().MSGTYPE << "\n";
                cerr.flush();
                return bytes_read;
            }
            // its a MSGTYPE_STATUS indicating an error
            // so the actual error code is in the data bytes in big endian
            rc = (DWORD(M_CMSG_MSG().DATA[0]) << 24)
                            | (DWORD(M_CMSG_MSG().DATA[1]) << 16)
                            | (DWORD(M_CMSG_MSG().DATA[2]) << 8)
                            | DWORD(M_CMSG_MSG().DATA[3]);

            stringstream msg;
            msg << "Error frame from Peak CAN device \"" << m_device << "\": "
                            << GetLastErrorMessage();
            throw new cCANBaseException(msg.str());
        }

        // check the actual id of the received message:
        if (M_CMSG_MSG().ID == id)
        {
            // matches, so finally copy received bytes to user data:
            for (bytes_read = 0; bytes_read < M_CMSG_MSG().LEN; bytes_read++)
                *data++ = M_CMSG_MSG().DATA[bytes_read];
            DBG( cerr << "cCANBase::ReadData read new CAN frame ID:0x" << hex << M_CMSG_MSG().ID << " LEN=" << int(M_CMSG_MSG().LEN) << " DATA (hex):" << cHexByteString( (char const*) M_CMSG_MSG().DATA, M_CMSG_MSG().LEN ) << "\n" );
            return bytes_read;
        }

        // does not match, so record message for other callers
        M_CMSG_MSG_LAST(M_CMSG_MSG().ID) = M_CMSG_MSG();

    } // end of while(1)
}
//----------------------------------------------------------------------
