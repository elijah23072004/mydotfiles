if bluetoothctl show | grep "Powered:" | grep "yes"; then 
    bluetoothctl power off 
else 
    bluetoothctl power on 
    bluetoothctl discoverable on 
    bluetoothctl scan on 
fi 

