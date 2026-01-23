
logFile="/home/eli/.cache/wofiBrowserSearch.txt"
prompt="Search:"
if [ $1 == "--url" ]; then 
    logFile="/home/eli/.cache/wofiBrowserUrl.txt"
    prompt="Url:"
fi

if pgrep wofi > /dev/null 2>&1 && killall wofi; then 
    exit 0 
fi
search=$(cat $logFile | wofi -e -d -p "$prompt")
if [ $? != 0 ]; then
    exit 0 
fi
echo "$search" >> $logFile 
vals=$(sort "$logFile" | uniq)
echo "$vals" > $logFile
#make sure each search can only exist once per log file
if [ $1 == "--search" ]; then 
    firefox --new-window --search "$search"
elif [ $1 == "--url" ]; then
    firefox --new-window "$search"
fi

