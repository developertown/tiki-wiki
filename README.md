# Docker image for [Tiki Wiki](https://tiki.org)

[![Build Status](https://travis-ci.org/developertown/tiki-wiki.svg?branch=master)](https://travis-ci.org/developertown/tiki-wiki)
[![Docker Automated build](https://img.shields.io/docker/automated/developertown/tiki-wiki.svg)](https://hub.docker.com/r/developertown/tiki-wiki/)
[![Docker Stars](https://img.shields.io/docker/stars/developertown/tiki-wiki.svg)](https://hub.docker.com/r/developertown/tiki-wiki/)
[![Docker Pulls](https://img.shields.io/docker/pulls/developertown/tiki-wiki.svg)](https://hub.docker.com/r/developertown/tiki-wiki/)

## Supported tags

- `latest, 17.1` [(17.1/Dockerfile)](17.1/Dockerfile)

## How to use this image

### Install

Install the container:

```
docker pull developertown/tiki-wiki
```

Alternatively, pull a specific version:

```
docker pull developertown/tiki-wiki:17.1
```

### Usage

This image currently comes with `mysqli` driver support, and will require access to a running mysql database.

### Storage

The `/opt/tiki` directory should be persistent and mounted to a storage volume outside of the container.
