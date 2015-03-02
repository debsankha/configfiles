#!/bin/bash
xrandr --output HDMI-0 --primary --mode 1920x1200 --output DVI-1 --rotate left --right-of HDMI-0  --mode 1280x1024
SpiderOak &
ssh -D 12345 root@loki.debsankha.net &
