/*!
 * \file pdo.h
 *
 * Simple header-only implementation of CANopen Process Data Objects
 *
 * \date:   13.02.2012
 * \author: Dirk Osswald  dirk.osswald@de.schunk.com
 */

#ifndef PDO_H_
#define PDO_H_

#include <assert.h>

#include "canbase.h"

//! Return a node_no node number corresponding to a given CAN ID \a id
inline unsigned char GetNodeNoFromID( unsigned short id )
{
    return id & 0x07f;
}

//! Return a tpdo_no TPDO number corresponding to a given CAN ID \a id
inline unsigned char GetTPDONoFromID( unsigned short id )
{
    return (id & 0x700)>>8;
}

/*!
 * Simple class to Download/Upload PDO data
 *
 */
class cPDO
{
public:

    static unsigned short const PDO1TX_ID = 0x180; //         #  384 ->  385 bis 511
    static unsigned short const PDO1RX_ID = 0x200; //         #  512 ->  513 bis 639
    static unsigned short const PDO2TX_ID = 0x280; //         #  640 ->  641 bis 767
    static unsigned short const PDO2RX_ID = 0x300; //         #  768 ->  769 bis 895
    static unsigned short const PDO3TX_ID = 0x380; //         #  896 ->  897 bis 1023
    static unsigned short const PDO3RX_ID = 0x400; //         # 1024 -> 1025 bis 1151
    static unsigned short const PDO4TX_ID = 0x480; //         # 1152 -> 1153 bis 1279
    static unsigned short const PDO4RX_ID = 0x500; //         # 1280 -> 1281 bis 1407

    //! CTOR for CANopen PDO communication
    cPDO( cCANBase& _can, unsigned char _node, unsigned char _rpdo_no, unsigned char _rpdo_len, unsigned char _tpdo_no, unsigned char _tpdo_len ) :
        can( _can ),
        node( _node ),
        rpdo_no( _rpdo_no ),
        rpdo_len( _rpdo_len ),
        tpdo_no( _tpdo_no ),
        tpdo_len( _tpdo_len )
    {
        assert( rpdo_no > 0  );   // RPDOs are numbered from 1 on in the CiA standard
        assert( rpdo_no <= 2 );   // only 1 RPDOs supported by SCHUNK modules
        assert( rpdo_len <= 8 );  // TPDOs are numbered from 1 on in the CiA standard
        assert( tpdo_no <= 4 );   // only 4 TPDOs supported by SCHUNK modules
        assert( tpdo_len <= 8 );
        rpdo_id = ((unsigned short) rpdo_no+1) * 0x100         + (unsigned short) node;
        tpdo_id = ((unsigned short) tpdo_no)   * 0x100 + 0x080 + (unsigned short) node;
        can.AddId( tpdo_id );
    }

    unsigned char GetNode(void) const
    {
        return node;
    }

    /*!
     * Download the configured \a _rpdo_len bytes from \a usrdata via RPDO number \a rpdo_no
     */
    void Download( unsigned char const* usrdata )
    {
        can.WriteData( rpdo_id, rpdo_len, usrdata );
    }

    /*!
     * Upload the configured \a _tpdo_len bytes into \a usrdata via TPDO number \a tpdo_no
     *
     * \return number of bytes actually received
     */
    int Upload( unsigned char* usrdata )
    {
        return can.ReadData( tpdo_id, usrdata );
    }

private:
    cCANBase& can;
    unsigned char  node;
    unsigned char  rpdo_no;
    unsigned char  rpdo_len;
    unsigned short rpdo_id;
    unsigned char  tpdo_no;
    unsigned char  tpdo_len;
    unsigned short tpdo_id;
};
#endif /* PDO_H_ */
