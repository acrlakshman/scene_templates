#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=8
OUTPUT_DIR='images/demo_camera_static'
mkdir -p $OUTPUT_DIR

imageI=1

mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/demo_camera_static_without_cam_directions.png demo_camera_static.xml
