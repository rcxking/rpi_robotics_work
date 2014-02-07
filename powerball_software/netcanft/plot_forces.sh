#/bin/bash

# pipe the output from dump_readings.sh to this
cat - | grep force | awk '{ print "Fx: " $2 "\nFy: " $3 "\nFz: " $4 }' | feedgnuplot --dataid --stream --lines --ymin -50 --ymax 50 --xlen 500 --autolegend
