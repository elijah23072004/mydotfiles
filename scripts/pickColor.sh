color=$(hyprpicker --autocopy)
if [ "$color" != "" ];then 
    notify-send "Color Picked was: $color"
fi
