originalPath="/mnt/Data/Music/Library/"
mp3Path="/mnt/Data/mp3Lib/"
phonePathMount="/mnt/Phone"
phonePath="/mnt/Phone/SD\ card/Music/"
piPath="/mnt/Network/Internal/Music/"
sdPath="/mnt/SDCard/Music/"
usbPath="/mnt/Usb/Music"


if [ "$1" == "-U" ]; then 
    sudo rsync -r --progress --delete-after "$mp3Path" "$usbPath"
elif [ "$1" == "-P" ]; then 
    sudo aft-mtp-mount "$phonePathMount"
    sudo rsync -a --delete-after "$mp3Path" "$phonePath"
elif [ "$1" == "-Pi" ]; then 
    sudo rsync -a --delete-after "$mp3Path" "$piPath"
elif [ "$1" == "-S" ]; then 
    sudo rsync -r --delete-after "$mp3Path"  "$sdPath"
else 
    echo "-U for usb, -P for phone, -Pi for pi, -S for sd card"
fi


