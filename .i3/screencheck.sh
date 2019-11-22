#!/bin/bash

if xrandr | grep -q "HDMI2 disconnected"; then
    sh ~/.screenlayout/one-monitor.sh
else
    sh ~/.screenlayout/two-monitor.sh
fi
