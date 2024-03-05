#!/bin/bash
#
set -e

sudo docker pull jsantisteban/mkdocs-material:latest

if [[ "$1" == "test" ]]; then
  case "$2" in
  "global")
    docker run --rm \
      -p 8001:8000 \
      -v "${PWD}":/docs \
      -u "$(id -u)":"$(id -g)" \
      jsantisteban/mkdocs-material serve -f ./config/global.yml --dev-addr 0.0.0.0:8000
  ;;
  "legal")
    docker run --rm \
      -p 8002:8000 \
      -v "${PWD}":/docs \
      -u "$(id -u)":"$(id -g)" \
      jsantisteban/mkdocs-material serve -f ./config/legal.yml --dev-addr 0.0.0.0:8000
  ;;
  "platform")
    sudo docker run --rm \
      -p 8000:8000 \
      -v "${PWD}":/docs \
      -u "$(id -u)":"$(id -g)" \
      jsantisteban/mkdocs-material serve -f ./config/platform.yml --dev-addr 0.0.0.0:8000
  ;;
  esac
fi

if [[ "$1" == "build" ]]; then
  docker run --rm \
    -v ${PWD}:/docs \
    -u "$(id -u)":"$(id -g)" \
    jsantisteban/mkdocs-material build -f ./config/global.yml

  docker run --rm \
    -v ${PWD}:/docs \
    -u "$(id -u)":"$(id -g)" \
    jsantisteban/mkdocs-material build -f ./config/legal.yml

  docker run --rm \
    -v ${PWD}:/docs \
    -u "$(id -u)":"$(id -g)" \
    jsantisteban/mkdocs-material build -f ./config/platform.yml
fi
