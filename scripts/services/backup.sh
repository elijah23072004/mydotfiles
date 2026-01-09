

backupLoc="/mnt/External/Backups/"

if [ ! -d "$backupLoc" ]; then 
    exit 1
fi

pacman -Q > ${backupLoc}packages.txt

excludeLoc="/home/eli/dotfiles/scripts/services/exclude.txt"
rsync -a --delete-after /mnt/Data/Music/Library/ "${backupLoc}Music/"

rsync -a --delete-after /mnt/Data/Notes/ "${backupLoc}Notes/"

rsync -a --delete-after /mnt/Data/Books/ "${backupLoc}Books/"

rsync -a --delete-after /mnt/Data/CompSci/ "${backupLoc}CompSci/"


rsync -a --delete-after /mnt/Data/notesBackup/ "${backupLoc}notesBackup/"
#sudo so files what are owned by root can get copied without an io error which 
#will stop files getting deleted after end of rsync (can do --ignore but that would not 
#include files wiht root in name
sudo rsync -a --delete-after --exclude-from=$excludeLoc  /home/eli/ "${backupLoc}eli/" 

#sync fresh rss backups from pi (can change to only store 2 later
#ssh into pi and run freshrss backup 
#dont care if these 2 fail so can skip and not repeat 
ssh eli@192.168.68.200 -t /home/eli/Scripts/backupFreshRSS.sh && rsync -a /mnt/Network/Internal/Backups/FreshRSS/ "${backupLoc}FreshRSS" --delete-after



notify-send Backup Completed
