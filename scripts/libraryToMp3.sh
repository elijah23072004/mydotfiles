convertLibrary() {
    local input="$1"
    local output="$2"
    for filename in "$input"/*; do 
        #echo $filename
        if [ -d "$filename" ] ; then 
            
            #recursively call function on sub folders but ignore folders which have # as the first character (whcih is my ignore character)
            if [[ $(basename "$filename") == "#"* ]]; then 
                continue 
            else 
                newOutput=""$output"/"$(basename "$filename")
                #echo "new output:"
                echo "$newOutput"
                mkdir -p "$newOutput"
                #/mnt/Data/libraryToMp3.sh "$filename" "$newOutput"
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
            #echo "cp $filename $output/"
            # -n dont replace
            cp -n "$filename" "$output/"
        fi
    done

}

echo "args"
echo $1
echo $2
inputPath="$1"
outputPath="$2"
if [ ! $# -eq 2 ]; then 
    inputPath="/mnt/Data/Music/Library/"
    outputPath="/mnt/Data/mp3Lib/"
    #echo "please pass input and output path"
    #exit
fi
echo "vars"
echo $inputPath
echo $ouputPath 
echo "$inputPath/*"
convertLibrary "$inputPath" "$outputPath" 
