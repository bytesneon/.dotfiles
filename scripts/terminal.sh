#!/bin/bash
#Use this script in a shortcut example CTRL+ALT+T to prevent multiple terminal windows.
#depends on ´xdotool´

if [[ $(pgrep -x konsole) ]]; then     xdotool windowactivate `xdotool search --pid $(pgrep -x konsole ) | tail -1`; else     konsole; fi

