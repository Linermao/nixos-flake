#!/usr/bin/env bash

# start swww-daemon
pgrep -x swww-daemon >/dev/null || swww init

swww img ../wallpapers/waifu_pink.png
