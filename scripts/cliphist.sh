#!/bin/bash


cliphist list | wofi -d -c ~/dotfiles/wofi/cliphistconfig -s ~/dotfiles/wofi/style.css| cliphist decode | wl-copy 

