# singularity exec --bind $(pwd):/home/mitsuba ../../mitsuba-renderer.sif bash render_demo_camera_rotate.sh && \
# singularity exec --bind $(pwd):/home/mitsuba ../../mitsuba-renderer.sif bash render_demo_camera_rotate_rel.sh && \
# singularity exec --bind $(pwd):/home/mitsuba ../../mitsuba-renderer.sif bash render_demo_making_backwall.sh && \
# singularity exec --bind $(pwd):/home/mitsuba ../../mitsuba-renderer.sif bash render_demo_making_frontwall.sh && \
# singularity exec --bind $(pwd):/home/mitsuba ../../mitsuba-renderer.sif bash render_demo_making_rightwall.sh && \
# singularity exec --bind $(pwd):/home/mitsuba ../../mitsuba-renderer.sif bash render_demo_making_leftwall.sh
# singularity exec --bind $(pwd):/home/mitsuba ../../mitsuba-renderer.sif bash render_demo_camera_rotate_rel.sh
singularity exec --bind $(pwd):/home/mitsuba ../../mitsuba-renderer.sif bash render_studio_with_armadillo_from_inside.sh
