newLine="2fa = $(oathtool --totp -b $(cat /home/eli/.encryptionKeys/proton2faCode)) "
oldLine="$(cat "/home/eli/.config/rclone/rclone.conf" | grep -i "2fa" -m 1)"

#echo "$newLine"
#echo $oldLine
#echo "sed -i -e s/$oldLine/$newLine/g /home/eli/.config/rclone/rclone.conf"
sed -i -e "s/$oldLine/$newLine/g" /home/eli/.config/rclone/rclone.conf
echo "done"
