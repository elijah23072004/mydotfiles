#!/bin/bash

pgrep wofi > /dev/null 2>&1 && killall wofi && exit 0 

case $1 in
    d) cliphist list | wofi -d -c ~/dotfiles/wofi/cliphistconfig -s ~/dotfiles/wofi/style.css | cliphist delete
        ;;

    w) if [ `echo -e "Clear\nCancel" | wofi -d -c ~/dotfiles/cliphistconfig -s ~/dotfiles/wofi/style.css` == "Clear" ] ; then
        cliphist wipe
       fi
       ;;

   *)  cliphist list | wofi -d -c ~/dotfiles/wofi/cliphistconfig -s ~/dotfiles/wofi/style.css| cliphist decode | wl-copy 
       ;;
esac


