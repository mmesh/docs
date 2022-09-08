#!/bin/sh
#

mkdocs build -f ./config/global.yml
mkdocs build -f ./config/legal.yml
mkdocs build -f ./config/platform.yml

cp ./_headers ./site/_headers
cp ./_redirects ./site/_redirects
