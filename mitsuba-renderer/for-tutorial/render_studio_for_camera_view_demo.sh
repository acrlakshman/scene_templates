#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=14
OUTPUT_DIR='images'
mkdir -p $OUTPUT_DIR

mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/studio_for_camera_view_demo_1.png studio_for_camera_view_demo.xml
