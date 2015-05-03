#!/bin/bash

set -e

. /diethack-www/setup/share.sh

# grunt-cli
sudo npm install -g grunt-cli@0.1.13

# bootstrap
git clone https://github.com/twbs/bootstrap /diethack-www/bootstrap.git
cd /diethack-www/bootstrap.git
git checkout v3.3.4
npm install

# jquery
mkdir /diethack-www/jquery
cd /diethack-www/jquery
npm install jquery@1.11.2

# diethack
git clone https://github.com/diethack/diethack /diethack-www/diethack.git
cd /diethack-www/diethack.git
git checkout 1.0.0
cd /diethack-www/diethack.git/pkg/archlinux
makepkg -sc --noconfirm
sudo pacman -U --noconfirm python2-diethack-1.0.0-1-any.pkg.tar.xz
rm python2-diethack-1.0.0-1-any.pkg.tar.xz
