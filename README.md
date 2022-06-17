# althttpd docker container

[![CI](https://github.com/rouhim/althttpd-docker/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/RouHim/althttpd-docker/actions/workflows/main.yml)
[![Docker Hub pulls](https://img.shields.io/docker/pulls/rouhim/althttpd.svg)](https://hub.docker.com/r/rouhim/althttpd)
[![Docker Hub size](https://img.shields.io/docker/image-size/rouhim/althttpd)](https://hub.docker.com/r/rouhim/althttpd)

A 'from scratch' container with a compressed size of 64 KB which is able to serve a static website, powered by [althttpd](https://sqlite.org/althttpd/doc/trunk/althttpd.md).

## Motivation
I really like the approach of althttpd to provide an extremely small and simple application that has only one task, but does it in the simplest and best way.

That's why I had the idea to take this approach further and provide a container that is based on scratch and do only serve static web files, nothing more. 

## Usage
Just copy you files in the `/www` folder of the container.

Your example Dockerfile:
```shell
FROM rouhim/althttpd
COPY ./mywebsite /www
```

This is the simplest example of how to serve your static web files. The port is already exposed to 8080 and the entrypoint is configured as well.

## Resources
 * https://sqlite.org/althttpd/doc/trunk/althttpd.md
 * https://github.com/jveres/althttpd-xsim
 * https://news.ycombinator.com/item?id=27431910
