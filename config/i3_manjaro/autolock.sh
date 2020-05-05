#!/bin/bash

# Lock the screen after 10 mins of inactivity

LOCKER="i3lock-fancy -gpt \"Enter password for `whoami`\"&& \
  sleep 1 && \
  systemctl suspend"

NOTIFIER="notify-send -t 6000 \"INACTIVE SCREEN\" \"Screen will lock in 60s\""

xautolock \
	-time 10 \
	-locker $LOCKER \
	-notify 60 \
	-notifier $NOTIFIER \
	-detectsleep
