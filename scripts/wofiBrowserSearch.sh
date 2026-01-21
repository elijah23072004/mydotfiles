


if pgrep wofi > /dev/null 2>&1 && killall wofi; then 
    exit 0 
fi

search=$(wofi -e -d)
if [ $? != 0 ]; then
    exit 0 
fi


if [ $1 == "--search" ]; then 
    firefox --new-window --search "$search"
elif [ $1 == "--url" ]; then
    firefox --new-window "$search"
fi


