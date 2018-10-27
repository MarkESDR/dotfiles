#!/bin/bash

# Lock the screen after 10 mins of inactivity

LOCKER="i3lock -i ~/.config/i3/lockscreen -f && \
  sleep 1 && \
  systemctl suspend, mode default"

NOTIFIER="notify-send -t 6000 \"INACTIVE SCREEN\" \"Screen will lock in 60s\""

xautolock \
	-time 10 \
	-locker $LOCKER \
	-notify 60 \
	-notifier $NOTIFIER \
	-detectsleep

