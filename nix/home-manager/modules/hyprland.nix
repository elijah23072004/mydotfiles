{
    wayland.windowManager.hyprland = {
        enable = true;
        xwayland.enable = true;
        settings = {
            monitor = ",preferred,auto,1";
            exec-once = [
                "hyprpaper"
                "~/.config/eww/scripts/start.exe"
                "swaync"
                "hypridle"
                "wl-paste --watch cliphist store"
                "swww init || swww-daemon --format xrgb"
                "~/dotfiles/waybar/start.sh"
            ];
            env = [
                "XCURSOR_SIZE,24"
                "HYPRCURSOR_THEME,Bibata-Modern-Classic"
                "HYPRCURSOR_SIZE,24"
            ];
            input = {
                kb_layout = "gb";
                kb_options =""; 

                # Set as needed
                kb_rules = "";
                kb_variant ="";
                kb_model ="";

                follow_mouse = 1;

                # Range is -1.0 to 1.0 | 0 means no modification to sensitivity.
                sensitivity = 0 ;

                touchpad = {
                    natural_scroll = false;
                };
            };
            #fixes a few bugs
            cursor.no_hardware_cursors=true;

            animations = {
                enabled =true;
                bezier = "myBezier, 0, 1, 0.18, 1.0";
                animation = [
                    "windows,1,1.5,myBezier"
                    "windowsOut, 1,2, myBezier, popin 95%"
                    "border, 1,12, myBezier"
                    "borderangle, 1, 5, default"
                    "fade, 1, 6, default"
                    "workspaces, 1, 6, default"
                ];
            };

            #gaps between windows as well as border colors prop to taskbar vals 
            general = {
                gaps_in = 5;
                gaps_out = 10;
                border_size = 1;
                "col.active_border" = "rgb(18,18,18)";
                "col.inactive_border" = "rgb(18,18,18)";

                #allows resizing windows by clicking and dragging on borders and gasp
                resize_on_border = true;

                layout = "dwindle";

                allow_tearing = false;

            };

            decoration = {
                #8px same as taskbar
                rounding = 12;

                active_opacity = 1.0;
                inactive_opacity = 1.0;

                #Windwo shadow 
                shadow = {
                    enabled = true;
                    range = 16;
                    render_power = 5;
                    color = "rgba(0,0,0,35)";
                };

                blur = {
                    enabled = true;
                    new_optimizations = true;
                    size =2 ;
                    passes = 3;
                    vibrancy = 0.1696;
                };

            };

            dwindle = {
                pseudotile = true;
                preserve_split = true;
            };

            master.new_status = "master";

            misc = {
                force_default_wallpaper = 0;
                disable_hyprland_logo = true;
            };

            gestures = {
                workspace_swipe =false;
            };  
            "$mainMod" = "SUPER";
            bindm = [
                "$mainMod, mouse:272, movewindow"
                "$mainMod, mouse:273, resizewindow"
            ];
            bind = [
                #applications
                "$mainMod, RETURN, exec, kitty"
                "$mainMod, B, exec, firefox"
                "$mainMod, S, exec, spotifyd"
                "$mainMod ,space, exec, pgrep wofi > /dev/null 2>&1 && killall wofi || wofi -S drun -c ~/dotfiles/wofi/config -s ~/dotfiles/wofi/style.css"
                # Windows
                "$mainMod, Q, killactive"
                "$mainMod, F, fullscreen"
                "$mainMod, E, exec, ~/dotfiles/scripts/filemanager.sh"
                "$mainMod, T, togglefloating"
                "$mainMod SHIFT, T, exec, ~/dotfiles/hypr/scripts/toggleallfloat.sh"
                "$mainMod, J, togglesplit"
                "$mainMod, left, movefocus, l"
                "$mainMod, right, movefocus, r"
                "$mainMod, up, movefocus, u"
                "$mainMod, down, movefocus, d"
                "$mainMod SHIFT, right, resizeactive, 100 0"
                "$mainMod SHIFT, left, resizeactive, -100 0"
                "$mainMod SHIFT, up, resizeactive, 0 -100"
                "$mainMod SHIFT, down, resizeactive, 0 100"

                "$mainMod, mouse_down, exec, hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float * 1.1')"
                "$mainMod, mouse_up, exec, hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '(.float * 0.9) | if . < 1 then 1 else . end')"

                "$mainMod, equal, exec, hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float * 1.1')"
                "$mainMod, minus, exec, hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '(.float * 0.9) | if . < 1 then 1 else . end')"
                "$mainMod, KP_ADD, exec, hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float * 1.1')"
                "$mainMod, KP_SUBTRACT, exec, hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '(.float * 0.9) | if . < 1 then 1 else . end')"

                "$mainMod SHIFT, mouse_up, exec, hyprctl -q keyword cursor:zoom_factor 1"
                "$mainMod SHIFT, mouse_down, exec, hyprctl -q keyword cursor:zoom_factor 1"
                "$mainMod SHIFT, minus, exec, hyprctl -q keyword cursor:zoom_factor 1"
                "$mainMod SHIFT, KP_SUBTRACT, exec, hyprctl -q keyword cursor:zoom_factor 1"
                "$mainMod SHIFT, 0, exec, hyprctl -q keyword cursor:zoom_factor 1"
                "$mainMod, mouse:275, exec, hyprctl -q keyword cursor:zoom_factor 1 #mouse side button 1"
                "$mainMod, mouse:276, exec, hyprctl -q keyword cursor:zoom_factor 1 #mouse side button  2"

                # Actions
                "$mainMod, N, exec, swaync-client -t"
                "$mainMod, R, exec, hyprshot --mode region --output-folder ~/Pictures/screenshots/"
                "CTRL ALT, 0xffff, exec, wlogout #control alt delete"
                "$mainMod CTRL, H, exec, ~/dotfiles/hypr/scripts/keybindings.sh"
                "$mainMod SHIFT, B, exec, ~/dotfiles/waybar/launch.sh"
                "$mainMod CTRL, B, exec, ~/dotfiles/scripts/restarteww.sh"
                "$mainMod CTRL SHIFT, B, exec, ~/dotfiles/scripts/reload.sh"
                "$mainMod SHIFT, R, exec, ~/dotfiles/hypr/scripts/loadconfig.sh"
                "$mainMod CTRL, F, exec, ~/dotfiles/scripts/filemanager.sh"
                "$mainMod CTRL, C, exec, ~/dotfiles/scripts/cliphist.sh"
                "$mainMod, V, exec, ~/dotfiles/scripts/cliphist.sh"
                "$mainMod CTRL, T, exec, ~/dotfiles/waybar/themeswitcher.sh"
                #"$mainMod CTRL SHIFT, A,exec,  ~/dotfiles/hypr/scripts/ToggleLaptopScreen.sh""CTRL ALT, space, exec, pla"yerctl play-pause"
                "CTRL ALT, left, exec, playerctl previous"
                "CTRL ALT, right, exec, playerctl next"
                ",KP_Up, exec, pactl set-sink-volume @DEFAULT_SINK@ +5%"
                ",KP_Down, exec, pactl set-sink-volume @DEFAULT_SINK@ -5%"
                "ALT SHIFT CTRL, S, exec,  ~/dotfiles/scripts/sleep.sh"
                "$mainMod, f2, exec, brightnessctl -q s 0%"
                "$mainMod, f3, exec, brightnessctl -q s 50%"
                "$mainMod SHIFT, f3, exec, brightnessctl -q s 100%"
                "$mainMod, L, exec, hyprlock"

                # Workspaces
                "$mainMod, 1, workspace, 1"
                "$mainMod, 2, workspace, 2"
                "$mainMod, 3, workspace, 3"
                "$mainMod, 4, workspace, 4"
                "$mainMod, 5, workspace, 5"
                "$mainMod, 6, workspace, 6"
                "$mainMod, 7, workspace, 7"
                "$mainMod, 8, workspace, 8"
                "$mainMod, 9, workspace, 9"
                "$mainMod, 0, workspace, 10"
                "$mainMod SHIFT, 1, movetoworkspace, 1"
                "$mainMod SHIFT, 2, movetoworkspace, 2"
                "$mainMod SHIFT, 3, movetoworkspace, 3"
                "$mainMod SHIFT, 4, movetoworkspace, 4"
                "$mainMod SHIFT, 5, movetoworkspace, 5"
                "$mainMod SHIFT, 6, movetoworkspace, 6"
                "$mainMod SHIFT, 7, movetoworkspace, 7"
                "$mainMod SHIFT, 8, movetoworkspace, 8"
                "$mainMod SHIFT, 9, movetoworkspace, 9"
                "$mainMod SHIFT, 0, movetoworkspace, 10"
                "$mainMod CTRL, mouse_down, workspace, e+1"
                "$mainMod CTRL, mouse_up, workspace, e-1"
                "$mainMod CTRL, down, workspace, empty"
                "$mainMod CTRL,1 , exec, python ~/dotfiles/hypr/scripts/swapWindows.py 1"
                "$mainMod CTRL,2 , exec, python ~/dotfiles/hypr/scripts/swapWindows.py 2"
                "$mainMod CTRL,3 , exec, python ~/dotfiles/hypr/scripts/swapWindows.py 3"
                "$mainMod CTRL,4 , exec, python ~/dotfiles/hypr/scripts/swapWindows.py 4"
                "$mainMod CTRL,5 , exec, python ~/dotfiles/hypr/scripts/swapWindows.py 5"
                "$mainMod CTRL,6 , exec, python ~/dotfiles/hypr/scripts/swapWindows.py 6"
                "$mainMod CTRL,7 , exec, python ~/dotfiles/hypr/scripts/swapWindows.py 7 "
                "$mainMod CTRL,8 , exec, python ~/dotfiles/hypr/scripts/swapWindows.py 8"
                "$mainMod CTRL,9 , exec, python ~/dotfiles/hypr/scripts/swapWindows.py 9 "
                "$mainMod CTRL,0 , exec, python ~/dotfiles/hypr/scripts/swapWindows.py 10"



                # Fn keys
                " , XF86MonBrightnessUp, exec, brightnessctl -q s +10%"
                " , XF86MonBrightnessDown, exec, brightnessctl -q s 10%-"
                " , XF86AudioRaiseVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ +5%"
                " , XF86AudioLowerVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ -5%"
                " , XF86AudioMute, exec, pactl set-sink-mute @DEFAULT_SINK@ toggle"
                " , XF86AudioPlay, exec, playerctl play-pause"
                " , XF86AudioPause, exec, playerctl pause"
                " , XF86AudioNext, exec, playerctl next"
                " , XF86AudioPrev, exec, playerctl previous"
                " , XF86AudioMicMute, exec, pactl set-sink-mute @DEFAULT_SOURCE@ toggle"




                # Passthrough SUPER KEY to Virtual Machine
                #bind = $mainMod, P, submap, passthru
                #submap = passthru
                #bind = SUPER, Escape, submap, reset
                #submap = reset


            ];

            layerrule = [
                #add blur to background of wofi
                "blur, wofi"
                "ignorealpha 0.01, wofi"
                #add blur to waybar 
                "blur,waybar"
                "blurpopups, waybar"
                "ignorealpha 0.01, waybar"

                #add blue to eww widgets
                "blur, eww"
                "blurpopups, eww"
                "ignorealpha 0.01, eww"

            ];
            
            #fix dragging issues with XWayland 
            windowrulev2 = [
                 "nofocus, class:^$, title:^%, xwayland:1,floating:1,fullscreen:0,pinned:0"
                "stayfocused, class:(rofi)"
            ];
            windowrule = [
                "tile, title:chromium"
                "float, title:blueman-manger"
                "float, title:nm-connection-editor"
                "float, title:qalculate-gtk"
                "float, title:rofi"
            ];
        };
    };
}
