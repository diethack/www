#!/bin/bash

set -e

TMPDIR=/var/tmp/diethack-www

# main static content
cp /diethack-www/www/* $TMPDIR

# bootstrap
cd /diethack-www/bootstrap.git
git checkout .
git apply /diethack-www/setup/bootstrap/bootstrap.patch
grunt dist
cp -r /diethack-www/bootstrap.git/dist/* $TMPDIR

# jquery
cp -r /diethack-www/jquery/node_modules/jquery/dist/cdn/* $TMPDIR

# examples
cd $TMPDIR
python2 /usr/share/python2-diethack/examples/olegusdiet/runme.py

# pics
convert $TMPDIR/oleg.jpg -strip -rotate 90 -resize 160x120 $TMPDIR/oleg-sm.jpg
