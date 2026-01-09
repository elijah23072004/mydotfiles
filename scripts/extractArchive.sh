pass=$(cat /home/eli/.encryptionKeys/ProtonArchiveKey.key) 
output="./extracted"
input=$1


mkdir -p extracted 
gpg -d --batch --passphrase $pass $input | tar -xvzf - -C $output 
