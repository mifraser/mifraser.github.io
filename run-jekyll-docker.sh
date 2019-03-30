#!/usr/bin/env bash

sudo docker run --rm -v=$PWD:/srv/jekyll -p 4000:4000 -it jekyll/jekyll /bin/bash

