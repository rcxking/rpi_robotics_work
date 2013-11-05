/*
 * vrpn_Tracker_marker.h
 *
 * Author: Hans Vorsteveld
 *
 * Streams the markers over VRPN.  Also manages wether or not trackables are going to be
 * streamed over VRPN.
 *
*/

#ifndef VRPN_TRACKER_H
#define VRPN_TRACKER_H

#include <vrpn_Connection.h>
#include <vrpn_Tracker.h>
#include <string.h>

class vrpn_Tracker_markers : public vrpn_Tracker
{
public:
    vrpn_Tracker_markers(vrpn_Connection* c, bool streamTrackables, int trackablesPort, bool streamMarkers, char *projectName);
    virtual ~vrpn_Tracker_markers();

    virtual void mainloop();

    void cleanup();

protected:
    struct timeval _timestamp;

private:
    bool m_streamTrackables;
    bool m_streamMarkers;
    int m_trackablesPort;
    int m_markersPort;
};

#endif