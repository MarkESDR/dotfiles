#!/bin/bash

# Save tmux session and exit server
~/.tmux/plugins/tmux-resurrect/scripts/save.sh
sleep 1
tmux kill-server

# Exit i3 session
i3-msg exit
