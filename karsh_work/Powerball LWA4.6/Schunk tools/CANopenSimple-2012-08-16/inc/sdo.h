/*
 * sdo.h
 *
 * Interface of simple, incomplete CANopen SDO (Service Data Object).
 *
 *  Created on: 13.02.2012
 *      Author: osswald2
 */

#ifndef SDO_H_
#define SDO_H_

#include <assert.h>

#include "canbase.h"

class cSDO
{
public:

    static unsigned short const SDOTX_ID = 0x580; //             # 1408 -> 1409 bis 1535
    static unsigned short const SDORX_ID = 0x600; //             # 1536 -> 1537 bis 1663

    // download
    static unsigned char const SDO_SEG_REQ_INIT_DOWNLOAD_xBYTE = 0x22;
    static unsigned char const SDO_SEG_REQ_INIT_DOWNLOAD_1BYTE = 0x2F;
    static unsigned char const SDO_SEG_REQ_INIT_DOWNLOAD_2BYTE = 0x2B;
    static unsigned char const SDO_SEG_REQ_INIT_DOWNLOAD_3BYTE = 0x27;
    static unsigned char const SDO_SEG_REQ_INIT_DOWNLOAD_4BYTE = 0x23;
    static unsigned char const SDO_SEG_RES_INIT_DOWNLOAD = 0x60;
    // upload
    static unsigned char const SDO_SEG_REQ_INIT_UPLOAD = 0x40;
    static unsigned char const SDO_SEG_RES_INIT_UPLOAD_nBYTE =  0x41;
    static unsigned char const SDO_SEG_RES_INIT_UPLOAD_xBYTE =  0x42;
    static unsigned char const SDO_SEG_RES_INIT_UPLOAD_1BYTE = 0x4F;
    static unsigned char const SDO_SEG_RES_INIT_UPLOAD_2BYTE = 0x4B;
    static unsigned char const SDO_SEG_RES_INIT_UPLOAD_3BYTE = 0x47;
    static unsigned char const SDO_SEG_RES_INIT_UPLOAD_4BYTE = 0x43;
    static unsigned char const SDO_SEG_REQ_UPLOAD0 = 0x60;
    static unsigned char const SDO_SEG_REQ_UPLOAD1 = 0x70;

    static unsigned char const SDO_SEG_ABORT_TRANSFER =0x80;

    //! CTOR for download of data to CANopen nodes via SDO
    cSDO( cCANBase& _can ) :
        can( _can )
    {}

    //! convert a SDH error code to a human readable string
    char const* SDOErrorToString( unsigned int rc );

    /*!
     * Download \a len bytes from \a usrdata into object dictionary of \a node into \a index / \a subindex
     *
     * \warning Works with expedited SDO download only for now (at most 4 user data bytes allowed)!
     */
    void Download( unsigned char node, unsigned short index, unsigned char subindex, unsigned char len, unsigned char const* usrdata );

private:
    cCANBase& can;
};

#endif /* SDO_H_ */
