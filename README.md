# docker-lua

A Docker image for running Lua applications.

[![Docker Build Status](https://img.shields.io/docker/build/helpermethod/docker-lua.svg)](https://hub.docker.com/r/helpermethod/docker-lua)
[![Docker Automated build](https://img.shields.io/docker/automated/helpermethod/docker-lua.svg)](https://hub.docker.com/r/helpermethod/docker-lua)
![Docker Pulls](https://img.shields.io/docker/pulls/helpermethod/docker-lua.svg)

## Features

* based on [Alpine Linux](https://hub.docker.com/_/alpine)
* runs as non-root user by default
* suitable as a base image

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

USER ROOT
WORKDIR /

# add your own instructions here

USER lua
WORKDIR lua
```
