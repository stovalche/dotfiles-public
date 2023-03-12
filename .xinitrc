#!/bin/sh

# monitor setup for xrandr
current_monitor=""
reload_setup(){
  if type "xrandr"; then
    for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
      if [ "$monitor" != "$current_monitor" ]; then
        xrandr --output "$monitor" --primary --mode 1366x768 --pos 0x0 --rotate normal
      fi
      current_monitor="$monitor"
    done
  fi
}
reload_setup

# udiskie
udiskie -s -A -f pcmanfm -q &

# set cursor shape
xsetroot -cursor_name left_ptr

# set xkb map
setxkbmap -layout us

# bspwm start
exec bspwm
