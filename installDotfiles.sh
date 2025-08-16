dotfilesLocation=$1
if [ ! "$#" -eq 1 ] ; then 
    read -p "please pass absolute path of dotfiles:- " dotfilesLocation 
fi
if [ ! -d "$dotfilesLocation" ]; then
    echo "Invalid path" 
    exit
fi 
echo $dotfilesLocation

#ask for which os to use 0 : arch,  1 : nix  
read -p "Which linux distribution is running: 0 - arch, 1 - nixos:-" choice 
if [ "$choice" = "0" ]; then 
    echo "arch" 
    packages="python-pywal glib2 base-devel alacritty kitty neovim starship vim firefox thunar hyprland hypridle hyprpaper ly cliphist swww hyprcursor hyprlock hyprshot hyprsunset spotify-launcher blueman bluez pulseaudio pulseaudio-bluetooth brightnessctl playerctl python networkmanager pavucontrol git wget"

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

     mkdir ~/.config  


     #ly 
     sudo systemctl enable ly.service
     sudo cp $dotfilesLocation/ly/config.ini /etc/ly/config.ini


 elif [ "$choice" = "1" ] ; then 
     echo "nix"
     sudo cp  $dotfilesLocation/configuration.nix /etc/nixos/configuration.nix


     sudo nixos-rebuild switch

 else 
     echo "invalid os" 
     exit
fi 
./scripts/createSymLinks.sh $dotfilesLocation


cp $dotfilesLocation/wal ~/.cache/wal -r 

#add gtk theme 
ln -s $dotfilesLocation/gtk ~/.themes
gsettings set org.gnome.desktop.interface gtk-theme diinki-retro-dark
