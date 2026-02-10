#!/bin/bash
mode="$1"
regularGamma=3000
nightGamma=2500

hyprctl hyprsunset
if [ $? -ne 0 ] ; then
    echo "hyprsunset not running"
    nohup hyprsunset &
fi
if [ $mode == "movie" ] ; then
    hyprctl hyprsunset identity 
    notify-send "movie mode activated"
elif [ $mode == "night" ]; then
    hyprctl hyprsunset temperature $nightGamma
    notify-send "night mode activated"
elif [ $mode == "regular" ]; then
    hyprctl hyprsunset temperature $regularGamma
    notify-send "regular nightlight activated"
fi
