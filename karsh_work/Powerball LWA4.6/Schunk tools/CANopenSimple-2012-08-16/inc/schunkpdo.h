/*
 * schunkpdo.h
 *
 * Simple header-only implementation of SCHUNK specific CANopen Process Data Objects
 *
 *  Created on: 13.02.2012
 *      Author: osswald2
 */

#ifndef SCHUNKPDO_H_
#define SCHUNKPDO_H_


#include "pdo.h"
#include "dsp402.h"


class cSchunkPDO : public cPDO
{
public:
    cSchunkPDO( cCANBase& _can, unsigned char _node ) :
        cPDO( _can, _node, 1, 8, 1, 8 )
    {
        tpdo_data.status_word.all  = 0;
        rpdo_data.control_word.all = 0;
        rpdo_data.position         = 0;  // possibly dangerous
        rpdo_data.current_offset   = 0;
    }

    //! data received from SCHUNK modules with default PDO mapping (order does matter here)
    struct sTPDOData
    {
        nDSP402::uStatusword status_word;
        short       current;
        int         position;
    } __attribute__((__packed__));

    //! data sent to SCHUNK modules with default PDO mapping (order does matter here)
    struct sRPDOData
    {
        nDSP402::uControlword control_word;
        short        current_offset;
        int          position;
    } __attribute__((__packed__));

    sTPDOData tpdo_data;
    sRPDOData rpdo_data;

    int Upload()
    {
        return cPDO::Upload( (unsigned char*) &tpdo_data );
    }

    void Download()
    {
        cPDO::Download( (unsigned char const*) &rpdo_data );
    }
};
#endif /* SCHUNKPDO_H_ */
