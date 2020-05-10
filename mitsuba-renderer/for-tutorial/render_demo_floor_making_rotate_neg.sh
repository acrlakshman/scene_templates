#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=8
OUTPUT_DIR='images/demo_floor_making_rotate_neg'
mkdir -p $OUTPUT_DIR

angleX=0
for i in `seq 1 91`
do
    count=$(printf %05d $i)
    echo 'Rendering $count'
    mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/$count.png -DrotFloor=-$angleX demo_floor_making_rotate_neg.xml
    ((angleX++))
done
