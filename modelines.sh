#!/bin/bash
xrandr --newmode "3440x1440_30" 157.75  3440 3520 3552 3600  1440 1448 1458 1461  +HSync -VSync
xrandr --addmode HDMI2 3440x1440_30
xrandr --output HDMI2 --mode 3440x1440_30

