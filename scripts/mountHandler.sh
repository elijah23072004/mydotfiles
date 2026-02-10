

if [ "$1" == "-E" ]; then
    sudo umount /mnt/External
    sudo cryptsetup close encryptedexternal
    sudo cryptsetup open UUID=8f069dd9-407c-40a1-834b-35cf35ae251a encryptedexternal --key-file /home/eli/.encryptionKeys/external.key
    sudo mount /dev/mapper/encryptedexternal /mnt/External/
elif [ "$1" == "-EU" ]; then 
    sudo umount /dev/mapper/encryptedexternal
    sudo cryptsetup close encryptedexternal
elif [ "$1" == "-P" ]; then 
    gio mount -li | awk -F= '{if(index($2,"mtp") == 1)system("gio mount "$2)}'
elif [ "$1" == "" ]; then 
    sudo umount /mnt/External
    sudo cryptsetup close encryptedexternal
    sudo cryptsetup open UUID=8f069dd9-407c-40a1-834b-35cf35ae251a encryptedexternal --key-file /home/eli/.encryptionKeys/external.key
    sudo mount /dev/mapper/encryptedexternal /mnt/External/
else 
    echo "Unkown flags"
    echo "-P for mount phone, -E for umount encryptedexternal, -EU for unmount encryptedexternal"
fi
