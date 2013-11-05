/*
 * TTServer.cpp
 *
 * Author: Hans Vorsteveld
 *
 * Creates a server that can stream individual markers over VRPN.  It can also 
 * initiate the treaming of trackables over VRPN so that the TrackingTools
 * GUI does not need to be started.
 *
 */

#include "vrpn_Tracker_markers.h"
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <fstream>
#include <iostream>
#include <string>

using namespace std;

void FileIOError(int l)
{
    fprintf(stderr,"Error reading config file on line %d\n",l);
    Sleep(1000);
    exit(1);
}

int main(int argc, char** argv)
{
    string line;
    char* projectName;
    bool streamTrackables = false;
    int trackablesPort = 3883;//default: 3883
    bool streamMarkers = false;
    int markersPort = 3884;   //default: 3884

    // Load the configuration file, should be right next to the executable
    ifstream config_file("TTStreamConfig.txt");
    if(config_file.is_open())
    {
        getline(config_file,line);
        int space = line.find_first_of(" ");

        if(line.substr(0,space) != "PROJECT_FILE") FileIOError(1);
        projectName = new char[line.length() - space]; // Enough room for project name and NULL terminator
        memcpy(projectName,line.substr(space + 1).c_str(),line.length() - space - 1); // Copy name
        projectName[line.length() - space - 1] = '\0'; // Terminate string

        getline(config_file,line);
        space = line.find_first_of(" ");
        if(line.substr(0,space) != "STREAM_TRACKABLES") FileIOError(2);
        if(line.substr(space+1,1) == "0")
        { streamTrackables = false; }
        else
        { streamTrackables = true; }

        getline(config_file,line);
        space = line.find_first_of(" ");
        if(line.substr(0,space) != "TRACKABLES_PORT") FileIOError(3);
        trackablesPort = atoi(line.substr(space+1).c_str());

        getline(config_file,line);
        space = line.find_first_of(" ");
        if(line.substr(0,space) != "STREAM_MARKERS") FileIOError(4);
        if(line.substr(space+1,1) == "0")
        { streamMarkers = false; }
        else
        { streamMarkers = true; }

        getline(config_file,line);
        space = line.find_first_of(" ");
        if(line.substr(0,space) != "MARKERS_PORT") FileIOError(5);
        markersPort = atoi(line.substr(space+1).c_str());

        if(streamMarkers)
        { printf("Streaming Markers on port %d\n",markersPort);}
        else
        { printf("Not Streaming Markers\n"); }
        if(streamTrackables)
        { printf("Streaming Trackables on port %d\n",trackablesPort); }
        else
        { printf("Not Streaming Trackables\n"); }
        printf("\nWhen streaming is finished, press any key to exit\n\n");
    }
    else
    {
        fprintf(stderr, "Could not open file\n");
        while(!_kbhit())
        {
            Sleep(100);
        }
        return 0;
    }

    // Creating the network server
    vrpn_Connection_IP *m_Connection = new vrpn_Connection_IP(markersPort);

    // Creating the tracker
    vrpn_Tracker_markers* serverTracker = new vrpn_Tracker_markers(m_Connection,streamTrackables,trackablesPort,streamMarkers,projectName);

    printf("Created Server\n");

    while(!_kbhit())
    {
        serverTracker->mainloop();

        m_Connection->mainloop();

        // Calling Sleep to let the CPU breathe.
        Sleep(8);
    }

    serverTracker->cleanup();
}