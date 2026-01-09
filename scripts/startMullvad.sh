

mullvad connect 
mullvad split-tunnel add $(pgrep mpd)
mullvad split-tunnel add $(pgrep -o syncthing)


mullvad-vpn &
