# althttpd docker container

[![CI](https://github.com/rouhim/althttpd-docker/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/RouHim/althttpd-docker/actions/workflows/main.yml)
[![Docker Hub pulls](https://img.shields.io/docker/pulls/rouhim/althttpd.svg)](https://hub.docker.com/r/rouhim/althttpd)
[![Docker Hub size](https://img.shields.io/docker/image-size/rouhim/althttpd)](https://hub.docker.com/r/rouhim/althttpd)

This project provides a container with the size of 144kB, which is able to serve a static website.

## Motivation
I really like the approach of althttpd to provide an extremely small and simple application that has only one task, but does it in the simplest and best way.

That's why I had the idea to take this approach further and provide a container that is based on scratch and do only serve static web files, nothing more. 

## Usage
Just copy you files in the `/www` folder of the container.

## Used materials
 * https://sqlite.org/althttpd/doc/trunk/althttpd.md
 * https://github.com/jveres/althttpd-xsim
 * https://news.ycombinator.com/item?id=27431910
