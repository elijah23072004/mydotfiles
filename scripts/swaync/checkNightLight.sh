if systemctl --user status hyprsunset | grep disabled; then
    echo "false"
else 
    echo "true"
fi
