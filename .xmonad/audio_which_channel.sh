#!/bin/bash
if [ -n "$(pactl list short sinks | grep RUNNING | grep hdmi)" ]; then echo "/home/dmanik/.xmonad/dzen2/spkr_01.xbm"; else echo "/home/dmanik/.xmonad/dzen2/phones.xbm"; fi
