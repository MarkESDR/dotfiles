#!/bin/bash

# Toggles mute state for the current audio device

amixer -c 1 set Master toggle
if amixer -c 1 get Master | grep "\[on\]"; then
  if amixer -c 1 get Headphone | grep "\[0%\]"; then
    amixer -c 1 set Speaker toggle
  else
    amixer -c 1 set Headphone toggle
  fi
fi
