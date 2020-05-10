#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=14
OUTPUT_DIR='images/demo_floor_making_rotate_pos_pointsource'
mkdir -p $OUTPUT_DIR

angleX=0
for i in `seq 1 91`
do
    count=$(printf %05d $i)
    mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/$count.png -DrotFloor=$angleX demo_floor_making_rotate_pos_pointsource.xml
    ((angleX++))
done
