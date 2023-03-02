#!/bin/bash

# Terminate already running bas instances
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar
current_monitor=""
reload_setup(){
  if type "xrandr"; then
    for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
      if [ "$monitor" != "$current_monitor" ]; then
        MONITOR="$monitor"
        polybar --reload topbar &
        #polybar --reload botbar &
      fi
      current_monitor="$monitor"
    done
  fi
}
reload_setup
