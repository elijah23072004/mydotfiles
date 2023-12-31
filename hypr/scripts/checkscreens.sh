#!/bin/bash
OUTPUT=`(hyprctl monitors all)`
ALLOWEDMONITORS=("HDMI-A-1")

for i in ${ALLOWEDMONITORS[@]};
do 
    if [[ "$OUTPUT" == *"$i"* ]]; then
        $(hyprctl keyword monitor eDP-1, disable)
        exit 1
    fi
done
exit 0
