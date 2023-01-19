#!/usr/bin/env bash

polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar wm 2>&1 | tee -a /tmp/polybar1.log & disown
polybar main 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
