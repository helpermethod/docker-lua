FROM alpine:3.9

ARG LUA_VERSION=5.3.5
ARG LUA_DOWNLOAD_SHA256=0c2eed3f960446e1a3e4b9a1ca2f3ff893b6ce41942cf54d5dd59ab4b3b058ac

RUN set -o errexit -o nounset \
 && apk --no-cache add --virtual build-dependencies \
    gcc \
    libc-dev \
    make \
 && apk --no-cache add readline-dev \
 && printf 'Downloading Lua\n' \
 && wget --no-verbose -O lua.tar.gz https://www.lua.org/ftp/lua-${LUA_VERSION}.tar.gz \
 && printf 'Checking download hash\n' \
 && printf '%s  lua.tar.gz\n' "$LUA_DOWNLOAD_SHA256" | sha256sum -c - \
 && printf 'Installing Lua\n' \
 && tar xvf lua.tar.gz \
 && cd lua-$LUA_VERSION \
 && make linux \
 && make install \
 && cd .. \
 && rm -rf lua.tar.gz lua-$LUA_VERSION \
 && apk del build-dependencies \
 && printf 'Adding lua user and group\n' \
 && addgroup -g 1000 -S lua \
 && adduser -u 1000 -G lua -S lua

USER lua
WORKDIR /home/lua
