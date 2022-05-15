#!/bin/sh
#

mkdocs build -f ./config/global.yml
mkdocs build -f ./config/legal.yml
mkdocs build -f ./config/platform.yml
