if  pactl get-sink-mute @DEFAULT_SINK@ | grep "no"  ; then
    echo "false"
else
    echo "true"
fi 
