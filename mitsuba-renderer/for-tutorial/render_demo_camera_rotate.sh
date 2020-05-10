#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=8
OUTPUT_DIR='images/demo_camera_rotate_view_changed'
mkdir -p $OUTPUT_DIR

angleZ=0
imageI=1

for i in `seq 1 91`
do
    count=$(printf %05d $imageI)
    mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/$count.png -DangleZ=$angleZ demo_camera_rotate.xml
    ((imageI++))
    ((angleZ++))
done
