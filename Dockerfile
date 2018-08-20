FROM alpine:3.8

ARG LUA_VERSION=5.3.5

RUN apk --no-cache add --virtual build-dependencies \
    gcc \
    libc-dev \
    make \
 && apk --no-cache add readline-dev \
 && wget http://www.lua.org/ftp/lua-${LUA_VERSION}.tar.gz \
 && tar xvf lua-${LUA_VERSION}.tar.gz \
 && cd lua-$LUA_VERSION \
 && make linux \
 && make install \
 && cd .. \
 && rm -rf lua-${LUA_VERSION}.tar.gz lua-$LUA_VERSION \
 && apk del build-dependencies
