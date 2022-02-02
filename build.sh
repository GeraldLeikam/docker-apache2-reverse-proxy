#!/bin/bash
docker login -u "${DOCKERUSER}" -p "${DOCKERPASS}"
docker system prune -a -f
docker build -t drezael/apache2-reverse-proxy:ubuntu_20.04 -f ./DOCKERFILE .
docker push drezael/apache2-reverse-proxy:ubuntu_20.04