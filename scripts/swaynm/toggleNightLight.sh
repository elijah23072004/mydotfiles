if systemctl --user status hyprsunset | grep disabled; then
    systemctl --user enable --now hyprsunset.service
else 
    systemctl --user disable --now hyprsunset.service
fi
