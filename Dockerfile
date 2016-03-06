FROM gliderlabs/alpine:3.2
MAINTAINER Ben Hall <ben@benhall.me.uk>

RUN apk update && apk add curl git mercurial bzr go && rm -rf /var/cache/apk/*

ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin
