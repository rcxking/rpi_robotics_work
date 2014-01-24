/*
 * sdo.cpp
 *
 * Simple, incomplete CANopen SDO (Service Data Object) implementation.
 *
 *  Created on: 13.02.2012
 *      Author: osswald2
 */

#include <assert.h>

#include "sdo.h"

char const*
cSDO::SDOErrorToString( unsigned int rc )
{
    switch (rc)
    {
    case 0x00000000:
        return "Error Reset or no Error";
    case 0x05030000:
        return "Toggle bit not alternated";
    case 0x05040000:
        return "SDO protocol timed out";
    case 0x05040001:
        return "Client/server command specifier not valid or unknown";
    case 0x05040002:
        return "Invalid block size (block mode only)";
    case 0x05040003:
        return "Invalid sequence number (block mode only)";
    case 0x05040004:
        return "CRC error (block mode only)";
    case 0x05040005:
        return "Out of memory";
    case 0x06010000:
        return "Unsupported access to an object";
    case 0x06010001:
        return "Attempt to read a write only object";
    case 0x06010002:
        return "Attempt to write a read only object";
    case 0x06020000:
        return "Object does not exist in the object dictionary";
    case 0x06040041:
        return "Object cannot be mapped to the PDO";
    case 0x06040042:
        return "The number and length of the objects to be mapped would exceed PDO length";
    case 0x06040043:
        return "General parameter incompatibility reason";
    case 0x06040047:
        return "General internal incompatibility in the device";
    case 0x06060000:
        return "Access failed due to an hardware error";
    case 0x06070010:
        return "Data type does not match, length of service parameter does not match";
    case 0x06070012:
        return "Data type does not match, length of service parameter too high";
    case 0x06070013:
        return "Data type does not match, length of service parameter too low";
    case 0x06090011:
        return "Sub-index does not exist";
    case 0x06090030:
        return "Value range of parameter exceeded (only for write access)";
    case 0x06090031:
        return "Value of parameter written too high";
    case 0x06090032:
        return "Value of parameter written too low";
    case 0x06090036:
        return "Maximum value is less than minimum value";
    case 0x08000000:
        return "general error";
    case 0x08000020:
        return "Data cannot be transferred or stored to the application";
    case 0x08000021:
        return "Data cannot be transferred or stored to the application because of local control";
    case 0x08000022:
        return "Data cannot be transferred or stored to the application because of the present device state";
    case 0x08000023:
        return "Object dictionary dynamic generation fails or no object dictionary is present (e.g. object dictionary is generated from file and generation fails because of an file error)";
    default:
        return "Unknown error";
    }
}

void
cSDO::Download( unsigned char node, unsigned short index,
                unsigned char subindex, unsigned char len,
                unsigned char const* usrdata )
{
    assert( len <= 4 ); // only expedited transfer supported so far
    unsigned char data[8];
    switch (len)
    {
    case 1:
        data[0] = SDO_SEG_REQ_INIT_DOWNLOAD_1BYTE;
        break;
    case 2:
        data[0] = SDO_SEG_REQ_INIT_DOWNLOAD_2BYTE;
        break;
    case 3:
        data[0] = SDO_SEG_REQ_INIT_DOWNLOAD_3BYTE;
        break;
    case 4:
        data[0] = SDO_SEG_REQ_INIT_DOWNLOAD_4BYTE;
        break;
    default:
        assert( "unexpected case" );
        break;
    }
    data[1] = index & 0xff;
    data[2] = index >> 8;
    data[3] = subindex;
    for (int i = 0; i < 4; i++)
        if (i < len)
            data[4 + i] = usrdata[i];
        else
            data[4 + i] = 0;
    can.WriteData(SDORX_ID + node, 8, data);
}
