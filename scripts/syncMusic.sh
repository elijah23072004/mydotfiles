convertLibrary() {
    local input="$1"
    local output="$2"
    for filename in "$input"/*; do 
        if [ -d "$filename" ] ; then 
            #recursively call function on sub folders but ignore folders which have # as the first character (whcih is my ignore character)
            if [[ $(basename "$filename") == "#"* ]]; then 
                continue 
            else 
                newOutput=""$output"/"$(basename "$filename")
                mkdir -p "$newOutput"
                convertLibrary "$filename" "$newOutput"
            fi

        elif [[ $filename == *.m4a ]]; then
            newFileName=""$(basename "$filename" ".m4a")".mp3"
            #if file doesnt exist then make it
            if [ ! -f "$output/$newFileName" ]; then 
                ffmpeg -i "$input/$(basename "$filename")" -acodec libmp3lame  "$output/$newFileName"
            fi
        elif [[ $filename == *.flac ]]; then 
            newFileName=""$(basename "$filename" ".flac")".mp3"
            if [ ! -f "$output/$newFileName" ]; then
                ffmpeg -i "$input/$(basename "$filename")" -acodec libmp3lame  "$output/$newFileName"
            fi
        else 
            # -n dont replace
            cp -n "$filename" "$output/"
        fi
    done

}
originalPath="/mnt/Data/Music/Library/"
mp3Path="/mnt/Data/mp3Lib/"
phonePathMount="/mnt/Phone"
phonePath="/mnt/Phone/SD\ card/Music/"
piPath="/mnt/Network/Internal/Music/"
sdPath="/mnt/SDCard/Music/"
usbPath="/mnt/Usb/Music"

echo "Converting Library"
convertLibrary "$originalPath" "$mp3Path"
echo "Library Converted"

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


