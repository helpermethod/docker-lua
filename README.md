# docker-lua

A minimal Docker image for running Lua applications.

## Features

* based on [Alpine Linux](https://hub.docker.com/_/alpine)
* contains the minimum set of dependencies for running Lua-only applications
* runs as non-root user by default

## Usage

## Running a prebuilt image

```sh
# run the latest version
$ docker run -it helpermethod/docker-lua sh
# or run a specific version
$ docker run -it helpermethod/docker-lua:0.4.0 sh
```

## Using docker-lua as a base image

```dockerfile
FROM helpermethod/docker-lua:0.4.0
```
