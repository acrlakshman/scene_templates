This is a tutorial for updating a repository with bash command. 

# Linux or Mac

## Docker

```sh
docker container run --rm -ti -v $(pwd):/home/mitsuba mitsuba-renderer
```

Docker container automatically runs `render.sh` from current directory.

## Singularity

```sh
singularity exec --bind $(pwd):/home/mitsuba <path-to-mitsuba-renderer.sif>/mitsuba-renderer.sif bash render_sample.sh
```

While using singularity we need to provide render script to run.

# Windows

## Docker

```sh
docker container run --rm -v C:\<path-to-scene_templates>\scene_templates\mitsuba-renderer:/home/mitsuba mitsuba-renderer
```

# Results

## studio

* Scene file: studio.xml
* `bash run_singularity.sh`
  ![studio](https://beautyandsimulations.contennt.com/images/rendered/studio.png)
