#!/bin/sh
#

docker run --rm \
    --entrypoint /usr/local/bin/python \
    squidfunk/mkdocs-material /usr/local/bin/pip freeze > requirements.txt
