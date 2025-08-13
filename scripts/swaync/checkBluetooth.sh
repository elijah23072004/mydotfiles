if bluetoothctl show | grep "Powered: yes"; then 
    echo true
else 
    echo false
fi 
