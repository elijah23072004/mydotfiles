
outputLoc="/mnt/Data/notesBackup/"
archiveStart="notes"$(date -u +%y%m%d)


outputLoc="/mnt/Data/notesBackup/"
archiveStart="notes"$(date -u +%y%m%d)
for f in $outputLoc$archiveStart*; do 
    if [ -f $f ]; then
        echo "already done backup today skipping"

        rsync -ra /mnt/Data/notesBackup/ /mnt/External/Backup/Notes/
        #sync with proton drive
        
        #update rclone 2fa code
        facode=cat /home/eli/.encryptionKeys/proton2faCode
        code=oathtool -b --totp $facode

        rclone sync /mnt/Data/notesBackup/ Proton:NotesBackup --protondrive-2fa=$code
    fi
done

pass=$(cat /home/eli/.encryptionKeys/ProtonArchiveKey.key) 
archiveLoc="/mnt/Data/Notes/Notes"

tar -cvzf - $archiveLoc | gpg -c --batch --yes --passphrase $pass > ~/.cache/tmpnotesArchive.tar.gz.gpg 

mv ~/.cache/tmpnotesArchive.tar.gz.gpg ~/.cache/notesArchive.tar.gz.gpg
##diff not empty so changes
archiveName="notes"$(date -u +%y%m%dT%H:%M:%S%Z)".tar.gz.gpg"
#move archive to external drive

cp ~/.cache/notesArchive.tar.gz.gpg $outputLoc$archiveName

#only want to keep last x backups (not to waste too much space)
#keep last 500 backups 
numberToKeep=500
index=0
noFiles=$(ls $outputLoc | wc -l)
if [ $noFiles -gt $numberToKeep ]; then
    readarray -d '' entries < <(printf '%s\0' "$outputLoc"/* | sort -zVr)
    for filename in ${entries[@]}; do
        #echo $filename 
        ((index++))
        #echo $index
        if [ $index -gt $numberToKeep ]; then
            sudo rm $filename
        fi
    done
fi

rsync -ra "$outputLoc" /mnt/External/Backup/Notes/
#sync with proton drive
rclone sync "$outputLoc" Proton:NotesBackup


