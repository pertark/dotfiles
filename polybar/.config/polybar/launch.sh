#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

polybar lewes 2>&1 | tee -a /tmp/polybar.log & disown

# multiple monitors
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload lewes &
done

echo "Polybar launched..."

