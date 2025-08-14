
packages="glib2 base-devel alactritty eww hypr kitty neovim starship vim firefox thunar hyprland hypridle hyprpaper cliphist swww hyprcursor hyprlock hyprshot hyprsunset spotifty-launcher pactl blueman bluez pulseaudio pulseaudio-bluetooth brightnessctl playerctl python nmtui networkmanager pavucontrol git wget"
sudo pacman -Syu
sudo pacman -S --needed $packages



ln -S ~/dotfiles/alactritty  ~/.config/alactritty 
ln -S ~/dotfiles/eww ~/.config/eww
ls -S ~/dotfiles/hypr ~/.config/hypr
ln -S ~/dotfiles/.bashrc ~/.bashrc
ln -S ~/dotfiles/kitty ~/.config/kitty
ln -S ~/dotfiles/nvim ~/.config/nvim
ln -S ~/dotfiles/starship/starship.toml ~/.config/starship.toml
ln -S ~/dotfiles/swaync ~/.config/swaync 
ln -S ~/dotfiles/vim ~/.config/vim
ln -S ~/dotfiles/waybar ~/.config/waybar
ln -S ~/dotfiles/wlogout ~/.config/wlogout
ln -S ~/dotfiles/wofi ~/.config/wofi 



#ly
sudo cp ly/config.ini /etc/ly/config.ini
#enable ly
sudo systemctl enable ly.service


#add gtk theme 
ln -S ~/dotfiles/gtk .themes
gsettings set org.gnome.desktop.interface gtk-theme diinki-retro-dark



#setup yay and fonts 
mkdir ~/.cache/installer 
cd ~/.cache/installer 
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si 
cd ../.. 
rm -r installer 


fonts = "ttf-nerd-fonts-symmbols  awaita-fonts fontconig otf-font-awesome terminus-font woff2-font-awesome xorg-fonts-util ttf-roboto-mono ttf-fireacode-nerd"

yay -S fonts

