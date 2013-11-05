/*
 * vrpn_Tracker_markers.cpp
 *
 * Author: Hans Vorsteveld
 *
 */
#include "vrpn_Tracker_markers.h"
#include "NPTrackingTools.h"
#include <stdio.h>
#include <conio.h>

void CheckResult(NPRESULT result)
{
    if(result == NPRESULT_SUCCESS)
        return;

    printf("Error: %s\n\n (Press any key to continue)\n",TT_GetResultString(result));

    while(!_kbhit())
    {
        Sleep(100);
    }

    exit(1);
}

vrpn_Tracker_markers::vrpn_Tracker_markers(vrpn_Connection* c,bool streamTrackables, int trackablesPort, bool streamMarkers, char* projectName ) : vrpn_Tracker("markers",c)
{
    // Setup up private variables
    m_streamMarkers = streamMarkers;
    m_streamTrackables = streamTrackables;
    m_trackablesPort = trackablesPort;
    
    printf("Initializing Tracking System...\n");
    TT_Initialize();

    printf("Loading Project: %s\n",projectName);
    CheckResult(TT_LoadProject(projectName));

    if(m_streamTrackables)
    {
        // Start streaming of trackables over VRPN
        CheckResult(TT_StreamVRPN(true,m_trackablesPort));
    }
    else
    {
        // Do not start streaming of trackables over VRPN
        CheckResult(TT_StreamVRPN(false,m_trackablesPort));
    }

}

vrpn_Tracker_markers::~vrpn_Tracker_markers()
{
}

// Neatly cleans up the Tracking tools software
void vrpn_Tracker_markers::cleanup()
{
    // Stop streaming of trackables over VRPN
    CheckResult(TT_StreamVRPN(false,3883));

    printf("Shuting down NaturalPoint Tracking Tools\n");
    CheckResult(TT_Shutdown());
    TT_FinalCleanup();
    printf("Complete\n");
}

// Updates the Tracking Tools system and outputs markes if they were refreshed.
void vrpn_Tracker_markers::mainloop()
{
    int result = TT_Update();

    if(m_streamMarkers)
    {
        if(result == NPRESULT_SUCCESS)
        {
            vrpn_gettimeofday(&_timestamp, NULL);

            vrpn_Tracker::timestamp = _timestamp;
            
            char msgbuf[1000];
            int  len;
            
            // Send a message giving the number of markers that will be reported
            d_sensor = 5000;
            int markerCount = TT_FrameMarkerCount();
            pos[0] = (float)markerCount;
            len = vrpn_Tracker::encode_to(msgbuf);
            if (d_connection->pack_message(len, _timestamp, position_m_id, d_sender_id, msgbuf,vrpn_CONNECTION_LOW_LATENCY))
            {
                fprintf(stderr,"Can't write message: tossing\n");
            }

            // Go through all of the markers
            for(int i = 0; i < markerCount; i++)
            {
                // Get the data for tracking tools 

                pos[0] = TT_FrameMarkerX(i); 
                pos[1] = TT_FrameMarkerY(i);
                pos[2] = TT_FrameMarkerZ(i);

                // the d_quat array contains the orientation value of the tracker, stored as a quaternion
                // d_quat[0] holds the marker count.  The rest of the values are unused.
                d_quat[0] = (float)markerCount;
                d_quat[1] = 0.0f;
                d_quat[2] = 0.0f;
                d_quat[3] = 1.0f;

                d_sensor = i;
                len = vrpn_Tracker::encode_to(msgbuf);
                if (d_connection->pack_message(len, _timestamp, position_m_id, d_sender_id, msgbuf,vrpn_CONNECTION_LOW_LATENCY))
                {
                    fprintf(stderr,"Can't write message: tossing\n");
                }
            }

            server_mainloop();
        }
    }
}

