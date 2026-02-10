mode="$1"

if [ $mode == "movie" ] ; then
    notify-send "movie mode activated"
    pkill hyprsunset
elif [ $mode == "night" ]; then
    notify-send "night mode activated"
    pkill hyprsunset
    sleep 1
    hyprsunset --temperature 2500 & 
    disown
elif [ $mode == "regular" ]; then
    notify-send "regular nightlight activated"
    pkill hyprsunset
    sleep 1
    hyprsunset & 
    disown

fi
