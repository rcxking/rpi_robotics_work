#!/bin/sh -e

NET=can1

#kbps
BAUD=1000

NEWID=27

# 250k
DIV=`echo $((2000/$BAUD-1))`

echo DIV: $DIV

# set base id
#esdcantool --write --net $NET --baud 250 -i 20d -b 20
canmat send -f $NET  20d $NEWID
sleep 2

# Set baud rate
#esdcantool --write --net $NET --baud 250 -i 20e -b $DIV
canmat send -f $NET 20e $DIV
sleep 2

# set base id
#esdcantool --write --net $NET --baud 250 -i 20d -b 20
canmat send -f $NET 20d $NEWID
sleep 2

# reset
#esdcantool --write --net $NET --baud 250 -i 20c
canmat send -f $NET 20c
