#!/usr/bin/env bash

TMP=$(mktemp -d /tmp/netease-cloud-music-debian.XXXXXXXXXX)
DEB=netease-cloud-music_1.0.0_amd64_ubuntu16.04.deb
OUTPUT=netease-cloud-music_1.0.0-2_amd64.deb

dpkg-deb -x $DEB $TMP
dpkg-deb --control $DEB $TMP/DEBIAN
cp -rf DEBIAN $TMP
dpkg -b $TMP $OUTPUT

