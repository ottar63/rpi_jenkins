#!/bin/bash
#
#
docker run \
  -u root \
  --rm \
  -d \
  -p 8080:8080 \
  -p 50000:50000 \
  -v /opt/jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /opt/src:/opt/src \
  --name jenkins \
  ottar63/rpi-jenkins-docker
