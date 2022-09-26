# Worksheet - Hello World

This worksheet will go about demonstrating how to run the "hello-world" example 
of the Docker world.

# Running

The "hello-world" image is available from the [Docker Hub](https://hub.docker.com/_/hello-world)

To run it, use the following command.

```
docker run hello-world
```

This command will automatically determine if the image is available locally, and fetch it
from the central hub if it is not.

It will run the configured command (keyword "CMD") specified in the [Dockerfile](https://github.com/docker-library/hello-world/blob/master/Dockerfile-linux.template), which will output a blurb of text and then exit (with a zero exit code, meaning success).

There are also a number of assumptions that Docker makes in the absence of information, including (1) where to find the image, and (2) the version of the image.

A URL for a Docker image is structured as such; <registry><repo><tag>.

When not provided, the "registry" defaults to the Docker Hub and the tag to "latest". Therefore the command above is the equivalent of

```
docker run registry.hub.docker.com/library/hello-world:latest
```

If you see the text, you have successfully used Docker.

# Extra

The following commands are helpful for visualizing and maintenance.

## List images
List images stored locally.
```
docker image ls
```

## List containers
List containers (running and complete).
```
docker container ls
```

## Cleanup containers
Cleanup finished containers.
```
docker container prune
```

## Cleanup images
Cleanup unused images.
```
docker image prune -a
```

Without "-a", only "untagged" images would be cleaned up.

If the containers were cleaned up after, and not before, the image cleanup, the image would 
still be considered "in use" and not removed.