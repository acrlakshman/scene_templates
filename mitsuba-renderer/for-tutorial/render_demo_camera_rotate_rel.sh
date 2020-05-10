#!/bin/sh
source /home/mitsuba-renderer/setpath.sh

NUM_PROCS=14
# OUTPUT_DIR='images/demo_camera_rotate_rel'
OUTPUT_DIR='images/demo_camera_rotate_rel_with_up'
mkdir -p $OUTPUT_DIR

angleX=0
angleY=0
angleZ=0
imageI=1

for i in `seq 1 91`
do
    count=$(printf %05d $imageI)
    nX=`bc -lq <<< "s($angleX * 4. * a(1) / 180.)"`
    nY=`bc -lq <<< "c($angleY * 4. * a(1) / 180.)"`
    echo "nX = $nX; nY = $nY"
    mitsuba -p $NUM_PROCS -o ./$OUTPUT_DIR/$count.png -DnX=-$nX -DnY=$nY -DnZ=0 -DangleZ=$angleZ demo_camera_rotate_rel.xml
    ((imageI++))
    ((angleX++))
    ((angleY++))
    ((angleZ++))
done
