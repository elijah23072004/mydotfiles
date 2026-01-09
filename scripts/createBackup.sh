pass=$(cat /home/eli/.encryptionKeys/ProtonArchiveKey.key) 
archiveLoc="/mnt/Data/Notes/Notes"

tar -cvzf - $archiveLoc | gpg -c --batch --yes --passphrase $pass > ~/.cache/tmpnotesArchive.tar.gz.gpg 

mv ~/.cache/tmpnotesArchive.tar.gz.gpg ~/.cache/notesArchive.tar.gz.gpg
##diff not empty so changes
archiveName="notes"$(date -u +%d%m%yT%H:%M:%S%Z)".tar.gz.gpg"
#move archive to external drive

cp ~/.cache/notesArchive.tar.gz.gpg /mnt/External/Backup/Notes/$archiveName

#sync with proton drive
rclone sync /mnt/External/Backup/Notes Proton:NotesBackup
