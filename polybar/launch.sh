#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polysystem.log / /tmp/polywork.log
polybar system --config=$HOME/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybarsystem.log & disown
polybar work --config=$HOME/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybarwork.log & disown

echo "Bars launched..."
