#!/usr/bin/env fish

sudo chown feilong:feilong . -R

cd src
. ./compile.sh

sudo chown 1001:121 . -R
