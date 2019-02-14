# docker-lua

[![](https://images.microbadger.com/badges/version/helpermethod/docker-lua:0.4.0.svg)](https://microbadger.com/images/helpermethod/docker-lua:0.4.0 "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/helpermethod/docker-lua:0.4.0.svg)](https://microbadger.com/images/helpermethod/docker-lua:0.4.0 "Get your own image badge on microbadger.com")

A minimal Docker image for running Lua applications.

## Features

* based on [Alpine Linux](https://hub.docker.com/_/alpine)
* contains the minimum set of dependencies for running Lua-only applications
* runs as non-root user by default

## Usage

The easiest way to get started is running one of the [prebuilt images](https://hub.docker.com/r/helpermethod/docker-lua/tags/)
from https://hub.docker.com.

```sh
# run the latest version
$ docker run -it helpermethod/docker-lua sh
# or run a specific version
$ docker run -it helpermethod/docker-lua:0.4.0 sh
```

