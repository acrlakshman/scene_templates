#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=4
OUTPUT_DIR='images'
mkdir -p $OUTPUT_DIR

mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/studio_with_armadillo_from_inside_area_emitter_demo.png studio_with_armadillo_from_inside_area_emitter_demo.xml
