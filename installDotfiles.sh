
packages="glib2 base-devel alacritty kitty neovim starship vim firefox thunar hyprland hypridle hyprpaper ly cliphist swww hyprcursor hyprlock hyprshot hyprsunset spotify-launcher blueman bluez pulseaudio pulseaudio-bluetooth brightnessctl playerctl python networkmanager pavucontrol git wget"
sudo pacman -Syu
sudo pacman -S --needed $packages



#setup yay and fonts 
sudo rm -r yay 
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si 
sudo rm -r yay


fonts = "ttf-nerd-fonts-symmbols  awaita-fonts fontconig otf-font-awesome terminus-font woff2-font-awesome xorg-fonts-util ttf-roboto-mono ttf-fireacode-nerd"
yay -S --needed eww fonts




ln -S ./alactritty  ~/.config/alactritty 
ln -S ./eww ~/.config/eww
ls -S .//hypr ~/.config/hypr
ln -S ./.bashrc ~/.bashrc
ln -S ./kitty ~/.config/kitty
ln -S ./nvim ~/.config/nvim
ln -S ./starship/starship.toml ~/.config/starship.toml
ln -S ./swaync ~/.config/swaync 
ln -S ./vim ~/.config/vim
ln -S ./waybar ~/.config/waybar
ln -S ./wlogout ~/.config/wlogout
ln -S ./wofi ~/.config/wofi 



#ly
sudo cp ly/config.ini /etc/ly/config.ini
#enable ly
sudo systemctl enable ly.service


#add gtk theme 
ln -S ./gtk .themes
gsettings set org.gnome.desktop.interface gtk-theme diinki-retro-dark
