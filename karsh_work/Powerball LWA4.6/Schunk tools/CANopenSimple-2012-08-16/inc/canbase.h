/*
 * canbase.h
 *
 * Interface of base CAN object to communicate via CAN-bus
 * using PEAK USB to CAN converter.
 *
 *  Created on: 13.02.2012
 *      Author: osswald2
 */

#ifndef CANBASE_H_
#define CANBASE_H_

#if defined( OSNAME_LINUX )
# include <libpcan.h>

#elif defined( OSNAME_CYGWIN )
// on cygwin Pcan_usb.h includes windef.h which defines macros named max/min which the compiler confuses with max/min templates
// but defining NOMINMAX prevents those evil macros from being defined
# define NOMINMAX
# include <windows.h>
# include <Pcan_usb.h>

#else
# error "FIXME: support for PEAK CAN devices in other systems than linux/cygwin is not provided yet!"
        // e.g. the include header from peak is named libpcan.h on linux and peak_usb.h on windows
#endif

#include <iostream>
#include <iomanip>
#include <string>
#include <stdarg.h>
#include <cstring>    // needed in gcc-4.3 for prototypes like strcmp according to http://gcc.gnu.org/gcc-4.3/porting_to.html
#include <stdlib.h>   // needed in gcc-4.3 for prototypes like getenv
#include <cstdio>     // needed in gcc-4.4 (as reported by Hannes Saal)


// the Linux version of the PEAK library uses handles,
// while the cygwin/windows version does not. So use a macro
// to keep the code somewhat clearer
#if defined( OSNAME_LINUX )
# define USE_HANDLES( H_ ) (H_),
# define USE_HANDLE( H_ ) (H_)
//! Linux libpcan uses HANDLE where Windows Pcan_usb.h uses no handle at all:
typedef HANDLE PCAN_HANDLE;

#else
# define USE_HANDLES( H_ )
# define USE_HANDLE( H_ )
//! Linux libpcan uses HANDLE where Windows Pcan_usb.h uses no handle at all:
typedef void* PCAN_HANDLE; // dummy definition
#endif

#if 0
# define DBG( ... )         \
    do {                    \
        __VA_ARGS__;        \
    } while (0)
#else
# define DBG( ... )
#endif




//======================================================================


/*!
 \brief Derived exception class for low-level CAN PEAK related exceptions.
*/
class cCANBaseException
{
public:
   cCANBaseException( std::string const & _msg )
   {
       msg = _msg;
   }

   std::string msg;
};
//======================================================================

class cCANBase
{
public:
    //! CTOR: open connection to peak driver
    cCANBase(void);

    char const* GetErrorMessage( DWORD dw );

    //! return the last error message as string. The string returned will be overwritten by the next call to the function
    char const* GetLastErrorMessage( void )
    {
        return GetErrorMessage( rc );
    }

    void WriteData( DWORD id, int dlen, unsigned char const* ptr );

    int ReadData( unsigned short id, unsigned char *data );

    void AddId( unsigned short id )
    {
        CAN_MsgFilter( id, id, MSGTYPE_STANDARD );
    }
private:
    //! the internal handle to the driver
    PCAN_HANDLE peak_handle;

#if defined( OSNAME_LINUX )
    int timeout_us; //!< timeout in micro seconds
    TPCANRdMsg m_cmsg;
    TPCANRdMsg m_cmsg_last[2048];
#   define M_CMSG_MSG() m_cmsg.Msg
#   define M_CMSG_MSG_LAST( _id ) m_cmsg_last[ _id ].Msg
#else
    // The cygwin/windows version of the PEAK library/driver cannot handle timeouts...
    TPCANMsg m_cmsg;
    TPCANMsg m_cmsg_last[2048];
#   define M_CMSG_MSG() m_cmsg
#   define M_CMSG_MSG_LAST( _id ) m_cmsg_last[ _id ]
#endif

    //! last return code of calls to Peak functions
    DWORD rc;

    char m_device[64];
};
//======================================================================


#endif /* CANBASE_H_ */
