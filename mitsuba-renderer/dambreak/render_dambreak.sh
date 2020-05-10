#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

OUTPUT_DIR='images'
NUM_PROCS=14

mkdir -p $OUTPUT_DIR

for i in 1, 100, 200, 286
do
    count=$(printf %05d $i)
    mitsuba -p $NUM_PROCS -DalphaObj=./surfaces/$count.obj -o ./$OUTPUT_DIR/$count.png dambreak.xml
done
