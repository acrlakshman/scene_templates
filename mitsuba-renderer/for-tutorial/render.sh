#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=4
OUTPUT_DIR='images'
mkdir -p $OUTPUT_DIR

# python render.py demo.xml

mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/demo.png -DrotFloor=-90 demo.xml
