# Docker

```sh
docker container run --rm -ti -v $(pwd):/home/mitsuba mitsuba-renderer
```

Docker container automatically runs `render.sh` from current directory.

# Singularity

```sh
singularity exec --bind $(pwd):/home/mitsuba <path-to-mitsuba-renderer.sif>/mitsuba-renderer.sif bash render_sample.sh
```

While using singularity we need to provide render script to run.

# Results

## sample.xml

![simple studio](https://beautyandsimulations.contennt.com/images/rendered/sample.png)
