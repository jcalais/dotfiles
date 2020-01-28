#!/usr/bin/env sh

export MONITOR1=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | head -n 1)
export MONITOR2=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | sed -n 2p)

# Launch polybar on big screen if connected
if [[ ! -z MONITOR2 ]]; then
  xrandr --output DP2 --mode 3440x1440 --left-of LVDS1
  #xrandr --output HDMI2 --mode 2560x1080 --left-of LVDS1
  #xrandr --newmode "3440x1440_30" 157.75  3440 3520 3552 3600  1440 1448 1458 1461  +HSync -VSync
  #xrandr --addmode HDMI2 3440x1440_30
  #xrandr --output HDMI2 --mode 3440x1440_30
fi

