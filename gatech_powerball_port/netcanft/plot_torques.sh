#/bin/bash

# pipe the output from dump_readings.sh to this
cat - | grep moment | awk '{ print "Tx: " $2 "\nTy: " $3 "\nTz: " $4 }' | feedgnuplot --dataid --stream --lines --ymin -15 --ymax 15 --xlen 500 --autolegend --geometry 500x500+500+500
