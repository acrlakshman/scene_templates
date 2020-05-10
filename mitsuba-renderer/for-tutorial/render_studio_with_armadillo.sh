#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=8
OUTPUT_DIR='images'
mkdir -p $OUTPUT_DIR

imageI=1

for i in `seq 1 1`
do
    count=$(printf %05d $imageI)
    mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/studio_with_armadillo.png studio_with_armadillo.xml
    ((imageI++))
done
