
if [ ! "$#" -eq 2 ] ; then 
    echo "please pass absolute path of dotfiles as argument 1 and for argument 2 the operating system. 0 for arch linux and 1 for nixos"
    exit
fi
echo $1
echo $2

dotfilesLocation=$1

#ask for which os to use 0 : arch,  1 : nix  
os=$2
if [ $os -eq 0 ] ; then 
    echo "arch" 

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

     mkdir ~/.config  


     #ly 
     sudo systemctl enable ly.service
     sudo cp $dotfilesLocation/ly/config.ini /etc/ly/config.ini


 elif [ $os -eq 1 ] ; then 
     echo "nix"
     sudo cp  $dotfilesLocation/configuration.nix /etc/nixos/configuration.nix


     sudo nixos-rebuild switch

 else 
     echo "invalid os" 
     exit
fi 
./createSymLinks.sh $dotfilesLocation




#add gtk theme 
ln -s $dotfilesLocation/gtk ~/.themes
gsettings set org.gnome.desktop.interface gtk-theme diinki-retro-dark
