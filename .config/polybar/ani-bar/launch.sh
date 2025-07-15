#!/usr/bin/env bash

DIR="$HOME/.config/polybar/ani-bar"

# Terminate already running bar instances
killall -q polybar
# A robust wait loop
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the final bar
polybar main_bar -c "$DIR/config.ini" &

echo "The 'Ronin' build has launched."
