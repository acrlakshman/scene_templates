#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=14
OUTPUT_DIR='images/demo_camera_static_relative'
mkdir -p $OUTPUT_DIR

mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/demo_camera_static_relative.png demo_camera_static_relative.xml
