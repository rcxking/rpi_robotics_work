/*!
 * nmt.h
 *
 * Simple CANopen NMT (Network Management) interface.
 *
 *  Created on: 13.02.2012
 *      Author: osswald2
 */

#ifndef NMT_H_
#define NMT_H_

#include "canbase.h"

class cNMT
{
public:

    static unsigned short const NMT_ID    = 0x000;
    static unsigned char  const ALL_NODES = 0x00;

    enum eNMT_Command
    {
        NMT_STARTREMOTENODE = 0x01,
        NMT_STOPREMOTENODE = 0x02,
        NMT_ENTERPREOPERATIONAL = 0x80,
        NMT_RESETNODE = 0x81,
        NMT_RESETCOMMUNICATION = 0x82
    };

    cNMT( cCANBase& _can ) :
        can( _can )
    {}

    void Send( eNMT_Command cmd, unsigned char node )
    {
        unsigned char data[2];
        data[0] = (unsigned char) cmd;
        data[1] = node;
        can.WriteData( NMT_ID, 2, data );
    }

    void Start( unsigned char node )
    {
        Send( NMT_STARTREMOTENODE, node );
    }

    void Stop( unsigned char node )
    {
        Send( NMT_STOPREMOTENODE, node );
    }

    void Preoperational( unsigned char node )
    {
        Send( NMT_ENTERPREOPERATIONAL, node );
    }

    void Reset( unsigned char node )
    {
        Send( NMT_RESETNODE, node );
    }

    void ResetCommunication( unsigned char node )
    {
        Send( NMT_RESETCOMMUNICATION, node );
    }

private:
    cCANBase& can;
};

#endif /* NMT_H_ */
