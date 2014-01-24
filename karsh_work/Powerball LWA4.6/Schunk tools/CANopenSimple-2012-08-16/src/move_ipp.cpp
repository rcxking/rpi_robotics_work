/*
 * move_ipp.cpp
 *
 * Main program to move one or more CANopen axes.
 *
 * - This implements a very basic and simple CANopen master.
 * - It communicates with CANopen slaves that provide the
 *   "interpolated position" movement mode of the device profile
 *   IEC 61800-7-201 „Adjustable speed electrical power drive systems –
 *                    Part 7-201: Generic interface and use of profiles for
 *                    power drive systems – Profile type 1 specification
 *   formerly known as CiA DS402 Device Profile for Drives and Motion Control.
 * - It does not provide any kind of kinematic control, instead it just move
 *   one or more axes cyclically in a predefined way.
 *
 * \remark
 * - The terms (CANopen-) slave, (CANopen-) node and axis are used
 *   interchangeably here.
 *
 * \warning
 * - This program has _VERY_POOR_ error handling capabilities.
 *   E.g. timeouts due to communication errors/missing or wrongly addressed
 *   nodes might lead to an indefinite "hang" of the program.
 * - It should be used as a very first starting point only.
 * - It _MUST_NOT_ be used in productive environments without modification.
 * - BEFORE YOU RUN THE PROGRAM YOU MUST MAKE SURE THAT THE SELECTED AXES
 *   ARE ABLE TO MOVE IN THE SPECIFIED WAY!
 *
 *  Created on: 13.02.2012
 *      Author: osswald2
 */

#include <iostream>
#include <sstream>
#include <list>
#include <stdlib.h>

#include "canbase.h"
#include "nmt.h"
#include "sdo.h"
#include "sync.h"
#include "schunkpdo.h"
#include "dsp402.h"
#include "helper.h"

using namespace std;

//------------------------------------------------------------------------
// Some type definitions for easy access:

//! Simple STL list of node-ids:
typedef list<unsigned char> tNodeList;

typedef list<cSchunkPDO*> tPDOList;

//------------------------------------------------------------------------

//! Fixed SYNC period in seconds:
double period_s = 0.01;

//------------------------------------------------------------------------
/*!
 * Init interpolated position mode for all nodes in \a node_list
 *
 * \param can - base CAN object to communicate via CAN-bus
 * \param node_list - list of node IDs to init communication with
 *
 * \return A tPDOlist with ptrs to cSchunkPDO objects created with new according to \a node_list
 */
tPDOList
IPM_Init( cCANBase& can, tNodeList const& node_list )
{
    cSDO sdo(can);
    cNMT nmt(can);
    tNodeList::const_iterator node;

    // TODO: configure PDOs, for now rely on default mapping

    // configure timing parameters
    unsigned char interpolation_time_period_value = (unsigned char) (period_s * 1000.0);  // number of milliseconds
    char          interpolation_time_period_index = -3;                                  // -3 === unit of above is milliseconds
    for (node = node_list.begin(); node != node_list.end(); node++)
    {
        DBG( cerr << "Node " << int(*node) << " setting timing parameters:\n" );
        sdo.Download(*node, 0x60c2, 0x01, 1,
                     (unsigned char*) &interpolation_time_period_value);
        SleepSec( period_s );
        sdo.Download(*node, 0x60c2, 0x02, 1,
                     (unsigned char*) &interpolation_time_period_index);
    }

    // adjust sync_timeout_factor (needed on windows due to bad timing behaviour
    unsigned char sync_timeout_factor = 20;
    for (node = node_list.begin(); node != node_list.end(); node++)
    {
        DBG( cerr << "Node " << int(*node) << " setting sync_timeout_factor:\n" );
        sdo.Download(*node, 0x200e, 0x00, 1,
                     (unsigned char*) &sync_timeout_factor);
    }

    // set mode of operation
    nDSP402::eModeOfOperation mode_of_operation =
                    nDSP402::MOO_INTERPOLATED_POSITION_MODE;
    for (node = node_list.begin(); node != node_list.end(); node++)
    {
        DBG( cerr << "Node " << int(*node) << " setting mode of operation:\n" );
        sdo.Download(*node, 0x6060, 0x00, 1,
                     (unsigned char*) &mode_of_operation);
    }
    SleepSec(5 * period_s);

    // switch to operational with NMT
    for (node = node_list.begin(); node != node_list.end(); node++)
    {
        DBG( cerr << "Node " << int(*node) << " NMT start:\n" );
        nmt.Start(*node);
    }
    SleepSec(period_s);

    // create PDO objects to communicate with nodes
    tPDOList pdo_list;
    for (node = node_list.begin(); node != node_list.end(); node++)
    {
        DBG( cerr << "Node " << int(*node) << " create PDO receiver/sender:\n" );
        pdo_list.push_back(new cSchunkPDO(can, *node));
    }

    return pdo_list;
}
//----------------------------------------------------------------------

/*!
 * Perform one SYNC step:
 * # send all PDOs from \a pdo_list to the CANopen slaves
 *   (=> Download RPDOs (Receive PDO as seen by the CANopen slave))
 * # send CANopen SYNC object
 * # receive all PDOs from the CANopen slaves into \a pdo_list
 *   (=> Upload TPDOs (Transmit PDO as seen by the CANopen slave))
 *
 * @param can - base CAN object to communicate via CAN-bus
 * @param pdo_list - tPDOlist with ptrs to cSchunkPDO objects
 */
void
SyncAll( cCANBase& can, tPDOList& pdo_list )
{
    tPDOList::iterator pdo;

    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        //
        (*pdo)->Download();
    }

    SendSync(can);

    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        while ((*pdo)->Upload() == 0)
            ;

        if ((*pdo)->tpdo_data.status_word.bit.Fault)
        {
            stringstream msg;
            msg << "Node " << int((*pdo)->GetNode()) << " reported fault!";
            throw cCANBaseException(msg.str());
        }
    }
}
//----------------------------------------------------------------------

/*!
 * Bring all nodes in \a node_list into state "Operation enabled".
 * - Change state of internal state machine of all selected CANopen slaves.
 * - State machine is according to CANopen "device profile 402", i.e.
 *   - IEC 61800-7-201 „Adjustable speed electrical power drive systems –
 *                     Part 7-201: Generic interface and use of profiles for
 *                     power drive systems – Profile type 1 specification
 *     formerly known as CiA DS402 Device Profile for Drives and Motion Control
 *
 * @param can - base CAN object to communicate via CAN-bus
 * @param pdo_list - tPDOlist with ptrs to cSchunkPDO objects
 */
void
IPM_Enable( cCANBase& can, tPDOList& pdo_list )
{
    tPDOList::iterator pdo;

    cout << "Enabling all selected nodes\n";

    // upload TPDOs at least once to get current position of node
    SendSync(can);
    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        while ((*pdo)->Upload() == 0)
            ;
        cout << "Initially node " << (int)(*pdo)->GetNode() << " is at pos " << (*pdo)->tpdo_data.position << "\n";

        // copy current position to desired position
        (*pdo)->rpdo_data.position = (*pdo)->tpdo_data.position;
    }
    SleepSec(period_s);

    // t15 fault reset, if required
    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        if ((*pdo)->tpdo_data.status_word.bit.Fault)
        {
            (*pdo)->rpdo_data.control_word.bit.Reset_Fault = 1;
        }
    }
    SyncAll(can, pdo_list);
    SleepSec(period_s);

    // t2 shutdown
    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        (*pdo)->rpdo_data.control_word.bit.Switch_On = 0;
        (*pdo)->rpdo_data.control_word.bit.Enable_Voltage = 1;
        (*pdo)->rpdo_data.control_word.bit.Quick_Stop = 1;
        (*pdo)->rpdo_data.control_word.bit.Reset_Fault = 0;
    }
    SyncAll(can, pdo_list);
    SleepSec(period_s);

    // t3 switch on
    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        (*pdo)->rpdo_data.control_word.bit.Switch_On = 1;
        (*pdo)->rpdo_data.control_word.bit.Enable_Voltage = 1;
        (*pdo)->rpdo_data.control_word.bit.Quick_Stop = 1;
        (*pdo)->rpdo_data.control_word.bit.Enable_Operation = 0;
        (*pdo)->rpdo_data.control_word.bit.Reset_Fault = 0;
    }
    SyncAll(can, pdo_list);
    SleepSec(period_s);

    // t4 Enable
    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        (*pdo)->rpdo_data.control_word.bit.Switch_On = 1;
        (*pdo)->rpdo_data.control_word.bit.Enable_Voltage = 1;
        (*pdo)->rpdo_data.control_word.bit.Quick_Stop = 1;
        (*pdo)->rpdo_data.control_word.bit.Enable_Operation = 1;
        (*pdo)->rpdo_data.control_word.bit.Reset_Fault = 0;
    }
    SyncAll(can, pdo_list);
    SleepSec(period_s);
}
//----------------------------------------------------------------------

/*!
 * Bring all nodes in \a node_list into state "Switch on disabled"
 * - Change state of internal state machine of all selected CANopen slaves.
 * - State machine is according to CANopen "device profile 402", i.e.
 *   - IEC 61800-7-201 „Adjustable speed electrical power drive systems –
 *                     Part 7-201: Generic interface and use of profiles for
 *                     power drive systems – Profile type 1 specification
 *     formerly known as CiA DS402 Device Profile for Drives and Motion Control
 *
 * @param can - base CAN object to communicate via CAN-bus
 * @param pdo_list - tPDOlist with ptrs to cSchunkPDO objects
 */
void
IPM_Disable( cCANBase& can, tPDOList& pdo_list )
{
    tPDOList::iterator pdo;

    cout << "Enabling all selected nodes\n";

    // t5 disable operation
    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        (*pdo)->rpdo_data.control_word.bit.Switch_On = 1;
        (*pdo)->rpdo_data.control_word.bit.Enable_Voltage = 1;
        (*pdo)->rpdo_data.control_word.bit.Quick_Stop = 1;
        (*pdo)->rpdo_data.control_word.bit.Enable_Operation = 0;
        (*pdo)->rpdo_data.control_word.bit.Reset_Fault = 0;
    }
    SyncAll(can, pdo_list);
    SleepSec(period_s);

    // t6 shutdown
    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        (*pdo)->rpdo_data.control_word.bit.Switch_On = 0;
        (*pdo)->rpdo_data.control_word.bit.Enable_Voltage = 1;
        (*pdo)->rpdo_data.control_word.bit.Quick_Stop = 1;
        (*pdo)->rpdo_data.control_word.bit.Reset_Fault = 0;
    }
    SyncAll(can, pdo_list);
    SleepSec(period_s);

    // t7 quick stop
    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        (*pdo)->rpdo_data.control_word.bit.Enable_Voltage = 1;
        (*pdo)->rpdo_data.control_word.bit.Quick_Stop = 0;
        (*pdo)->rpdo_data.control_word.bit.Reset_Fault = 0;
    }
    SyncAll(can, pdo_list);
    SleepSec(period_s);
}
//----------------------------------------------------------------------


/*!
 * Move all nodes in \a pdo_list to position \a pos
 * with \a velocity
 *
 * @param can - base CAN object to communicate via CAN-bus
 * @param pdo_list - tPDOlist with ptrs to cSchunkPDO objects
 * @param pos - target position in mille degrees
 * @param velocity - target velocity in milli degrees / second
 */
void
IPM_MovePos( cCANBase& can, tPDOList& pdo_list, int pos, int velocity )
{
    tPDOList::iterator pdo;

    cout << "Moving all nodes to pos " << pos << " mdeg with velocity " << velocity << " mdeg/s\n";

    int delta_pos, max_delta_pos;
    max_delta_pos = 0;
    for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
    {
        delta_pos = abs(pos - (*pdo)->tpdo_data.position);
        if (delta_pos > max_delta_pos)
            max_delta_pos = delta_pos;
    }
    int move_steps = (max_delta_pos / velocity) / period_s;

    double dp;
    for (; move_steps > 0; move_steps--)
    {
        for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
        {
            delta_pos = abs(pos - (*pdo)->tpdo_data.position);
            if (delta_pos > 20)
            {
                if (pos > (*pdo)->tpdo_data.position)
                    dp = period_s * velocity;
                else if (pos < (*pdo)->tpdo_data.position)
                    dp = period_s * -velocity;
                else
                    dp = 0.0;

                (*pdo)->rpdo_data.position += dp;
                (*pdo)->rpdo_data.control_word.bit.Operation_Mode_Specific0 = 1;
                (*pdo)->rpdo_data.control_word.bit.Halt = 0;
            }
        }
        SyncAll(can, pdo_list);
        SleepSec(period_s);
    }
}
//----------------------------------------------------------------------

/*!
 * Keep all nodes corresponding to \a pdo_list at their current position
 * for \a t_s seconds, but activate controller.
 *
 * (Useful for Powerball since these have to search their sine vector
 * on the very first start)
 *
 * @param can - base CAN object to communicate via CAN-bus
 * @param pdo_list - tPDOlist with ptrs to cSchunkPDO objects
 * @param t_s - time in seconds to stay in position
*/
void
IPM_StayInPos( cCANBase& can, tPDOList& pdo_list, double t_s )
{
    tPDOList::iterator pdo;

    cout << "Activating controller for all nodes but stay in position\n";

    int move_steps = t_s / period_s;

    double dp;
    for (; move_steps > 0; move_steps--)
    {
        for (pdo = pdo_list.begin(); pdo != pdo_list.end(); pdo++)
        {
            (*pdo)->rpdo_data.control_word.bit.Operation_Mode_Specific0 = 1;
            (*pdo)->rpdo_data.control_word.bit.Halt = 0;
        }
        SyncAll(can, pdo_list);
        SleepSec(period_s);
    }
}
//----------------------------------------------------------------------

/*!
 * Main program to perform some movements
 *
 * @return - 0 for normal ending, error exit code else.
 */
int
main( void )
{
    try
    {
        // Create base CAN object to communicate via CAN-bus:
        cCANBase can;

        // Simple STL list of node-ids
        tNodeList nodes;

        // Select the CANopen nodes to operate on by pushing the node id into nodes:
        //   To work with other/fewer/more axes just comment/uncomment/change the following lines:
//        nodes.push_back( 3 );  // node 3 is usually the first axis in the "foot" of the robot
//        nodes.push_back( 4 );  // node 4 is usually the second axis of the robot
//        nodes.push_back( 5 );  // node 5 is usually the third axis of the robot
//        nodes.push_back( 6 );  // node 6 is usually the fourth axis of the robot
//        nodes.push_back( 7 );  // node 7 is usually the fifth axis of the robot
        nodes.push_back( 8 );  // node 8 is usually the sixth and last axis of the robot, just before the tool/gripper

        // Create and initialize a simple STL list of CANopen Process Data
        // Object PDO handling objects:
        tPDOList pdos;
        pdos = IPM_Init(can, nodes);

        // Enable selected nodes:
        IPM_Enable(can, pdos);

        // Activate controllers but keep all selected axes in current
        // position for 3s:
        IPM_StayInPos( can, pdos, 3.0 );

        // Move all selected axes to position 0:
        IPM_MovePos(can, pdos, 0, 3000);

        // Cycle 3 times and move all selected axes with increasing
        // velocities to 10 deg and back:
        for ( int i=0; i<3; i++ )
        {
            IPM_MovePos(can, pdos, 1000, 1000);
            IPM_MovePos(can, pdos, 3000, 2000);
            IPM_MovePos(can, pdos, 7000, 3000);
            IPM_MovePos(can, pdos, 9000, 2000);
            IPM_MovePos(can, pdos, 10000, 1000);

            IPM_MovePos(can, pdos, 9000, 1000);
            IPM_MovePos(can, pdos, 7000, 2000);
            IPM_MovePos(can, pdos, 3000, 3000);
            IPM_MovePos(can, pdos, 1000, 2000);
            IPM_MovePos(can, pdos, 0000, 1000);
        }
        // Keep controllers active and keep all selected axes in current
        // position for another second:
        IPM_StayInPos( can, pdos, 1.0 );

        // Disable selected axes:
        IPM_Disable(can, pdos);
    }
    catch (cCANBaseException const& e)
    {
        cerr << "\nCaught cCANBaseException: " << e.msg << "\n  Giving up.\n";
        exit(1);
    }

    return 0;
}
//----------------------------------------------------------------------
