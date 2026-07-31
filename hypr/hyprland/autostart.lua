hl.on("hyprland.start", function()

    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("wl-paste --watch cliphist store")
    hl.exec_cmd("swww init || swww-daemon --format xrgb")
    hl.exec_cmd("syncthing serve --no-browser")
    hl.exec_cmd("/home/eli/dotfiles/scripts/startKdeConnect.sh")
    hl.exec_cmd("nictone -s")
    hl.exec_cmd("protonvpn connect --country SE")
    hl.exec_cmd("/home/eli/.config/eww/scripts/start.sh")





end)


-- Exec (run every reload)
hl.on("config.reloaded", function()
    hl.exec_cmd("swaync")
    hl.exec_cmd(os.getenv("HOME") .. "/.config/eww/scripts/start.sh")
    hl.exec_cmd("albert")
end)
