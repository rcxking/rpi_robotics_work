#!/bin/bash

# pipe the output from dump_readings.sh to this
cat - | \
grep --line-buffered '[force]\|[moment]' | awk '{ if( $1 == "\[force\]" ) { print "0: " $2 "\n1: " $3 "\n2: " $4 } else { print "3: " $2 "\n4: " $3 "\n5: " $4} fflush();}' | ./driveGnuPlots.pl 6 500 500 500 500 500 500 "Fx" "Fy" "Fz" "Tx" "Ty" "Tz" 640x334+0+10 640x334+0+345 640x334+0+680 640x334+641+10 640x334+641+345 640x334+641+680
