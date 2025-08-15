myDotfilesLocation=$1
mkdir ~/.config

unlink ~/.config/alacritty 
unlink ~/.config/eww
unlink ~/.config/hypr
unlink ~/.bashrc
unlink ~/.config/kitty
unlink ~/.config/nvim
unlink ~/.config/starship.toml
unlink ~/.config/swaync 
unlink ~/.config/vim
unlink ~/.config/waybar
unlink ~/.config/wlogout
unlink ~/.config/wofi 



rm ~/.config/alacritty 
rm ~/.config/eww
rm ~/.config/hypr
rm ~/.bashrc
rm ~/.config/kitty
rm ~/.config/nvim
rm ~/.config/starship.toml
rm ~/.config/swaync 
rm ~/.config/vim
rm ~/.config/waybar
rm ~/.config/wlogout
rm ~/.config/wofi 






ln -s $myDotfilesLocation/alactritty  ~/.config/alacritty 
ln -s $myDotfilesLocation/eww ~/.config/eww
ln -s $myDotfilesLocation/hypr ~/.config/hypr
ln -s $myDotfilesLocation/.bashrc ~/.bashrc
ln -s $myDotfilesLocation/kitty ~/.config/kitty
ln -s $myDotfilesLocation/nvim ~/.config/nvim
ln -s $myDotfilesLocation/starship/starship.toml ~/.config/starship.toml
ln -s $myDotfilesLocation/swaync ~/.config/swaync 
ln -s $myDotfilesLocation/vim ~/.config/vim
ln -s $myDotfilesLocation/waybar ~/.config/waybar
ln -s $myDotfilesLocation/wlogout ~/.config/wlogout
ln -s $myDotfilesLocation/wofi ~/.config/wofi 




