#!/bin/bash

# Save tmux session and exit server
if tmux info &> /dev/null; then
  ~/.tmux/plugins/tmux-resurrect/scripts/save.sh
  tmux kill-server
fi

# Exit i3 session
i3-msg exit
