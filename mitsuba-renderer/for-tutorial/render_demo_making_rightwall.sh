#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=14
OUTPUT_DIR='images/demo_making_rightwall'
mkdir -p $OUTPUT_DIR

angleY=0
posX=0.0
INC=0.02

imageI=1

for i in `seq 1 91`
do
    count=$(printf %05d $imageI)
    mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/$count.png -DangleY=$angleY -DposX=$posX demo_making_rightwall.xml
    ((angleY++))
    ((imageI++))
done

angleY=90
for i in `seq 1 51`
do
    count=$(printf %05d $imageI)
    mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/$count.png -DangleY=$angleY -DposX=-$posX demo_making_rightwall.xml
    posX=`echo $posX + $INC | bc`
    ((imageI++))
done
