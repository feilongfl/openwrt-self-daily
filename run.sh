#!/usr/bin/env fish
docker run -it --rm -v (realpath ./src):/home/feilong openwrt_compiler
