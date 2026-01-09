#!/bin/bash

# Reload/Open eww
#pkill eww
eww kill
eww daemon

# Day label at the top of the screen.
#eww open daybox

# Wofi button  -- Cancelled/still wip, I think it looks bad.
# eww open menu

# The temperature widget
#eww open diinkitemperature --screen 0 --id primary
#eww open diinkitemperature --screen 1 --id secondary


# All other aesthetic gifs
#eww open gif1 --screen 0 --id primary
#eww open gif2 --screen 1 --id secondary
#eww open gif2 --screen 0 --id primary 
#eww open gif2 --screen 1 --id secondary

#eww open penguin --screen 0 --id primary
#eww open penguin --screen 1 --id secondary

widgets="diinkitemperature gif1 gif2 penguin"

eww open-many $widgets --arg "screen=1"
eww open-many $widgets --arg "screen=0"



# Call the weather polling function once initially.
# I recommend installing cron and making a cronjob that calls
# the script with --getdata every 30 minutes.


WEATHER_POLLING="$HOME/.config/eww/scripts/weather.sh"
bash "$WEATHER_POLLING" --getdata &
disown

# -- Experimental gif, uncomment if you want it :D
#eww open gif3
