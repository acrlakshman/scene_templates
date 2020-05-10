#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

OUTPUT_DIR='images'
NUM_PROCS=14

mkdir -p $OUTPUT_DIR

mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/studio_tutorial.png studio_tutorial.xml
