#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=14
OUTPUT_DIR='images/demo_making_backwall'
mkdir -p $OUTPUT_DIR

posZ=0.0
INC=0.02
for i in `seq 1 51`
do
    count=$(printf %05d $i)
    mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/$count.png -DposZ=-$posZ demo_making_backwall.xml
    posZ=`echo $posZ + $INC | bc`
done
