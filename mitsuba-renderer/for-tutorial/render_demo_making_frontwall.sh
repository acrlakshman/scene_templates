#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=14
OUTPUT_DIR='images/demo_making_frontwall'
mkdir -p $OUTPUT_DIR

angleY=0
posZ=0.0
INC=0.02

imageI=1

for i in `seq 1 181`
do
    count=$(printf %05d $imageI)
    mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/$count.png -DangleY=$angleY -DposZ=$posZ demo_making_frontwall.xml
    ((angleY++))
    ((imageI++))
done

angleY=180
for i in `seq 1 51`
do
    count=$(printf %05d $imageI)
    mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/$count.png -DangleY=$angleY -DposZ=$posZ demo_making_frontwall.xml
    posZ=`echo $posZ + $INC | bc`
    ((imageI++))
done
