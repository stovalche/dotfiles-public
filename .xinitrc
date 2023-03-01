#!/bin/sh

# udiskie
udiskie -s -A -f pcmanfm -q &

# set cursor shape
xsetroot -cursor_name left_ptr

# monitor setup (xrandr, bspwm, polybar)
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

# bspwm
exec bspwm

setxkbmap -layout us
