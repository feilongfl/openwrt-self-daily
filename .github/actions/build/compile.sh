#!/usr/bin/env fish

sudo chown feilong:feilong .

cd src
. ./compile.sh

sudo chown root:root .
