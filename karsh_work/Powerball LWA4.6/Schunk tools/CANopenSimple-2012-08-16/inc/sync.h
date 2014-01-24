/*
 * sync.h
 *
 * Simple header-only implementation of CANopen SYNC object.
 *
 *  Created on: 13.02.2012
 *      Author: osswald2
 */

#ifndef SYNC_H_
#define SYNC_H_

#include <assert.h>

#include "canbase.h"

unsigned short const SYNC_ID = 0x080; //

//! send SYNC object now
void SendSync( cCANBase& can )
{
    can.WriteData( SYNC_ID, 0, (unsigned char*) NULL );
}

#endif /* SYNC_H_ */
