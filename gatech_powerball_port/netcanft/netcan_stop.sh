#!/bin/bash
/usr/local/etc/init.d/somatic stop

ach -U llwa_ft && echo "Ach channel removed." || echo "Ach channel not present. Continuing."

killall netcanftd

# netcan
# -d = daemonize (?)
# -I = somatic channel (?)
# -b = bus number (numeric argument)
# -B = bitrate (1Mbit = 1000)
# -c = channel
