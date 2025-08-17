
{
    programs.hyprlock = {
        enable = true;
        settings = {
            general = {
                ignore_empty_input = false;
            };
            input-field = [{
                monitor = "";
                size = "300, 50";
                outline_thickness = 3;
                dots_size = 0.33;
                dots_spacing = 0.15;
                dots_center = true;
                dots_rounding=-1;
                outer_color = "rgb(151515)";
                inner_color = "rgb(200,200,200)";
                font_color="rgb(10,10,10)";
                fade_on_empty = false;
                fade_timeout=1000;
                placeholder_text = "<i>Input Password...</i>";
                hide_input = true;
                rounding = -1;
                check_color= "rgb(204,136,34)";
                fail_color="rgb(204,34,34)";
                fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
                capslock_color=-1;
                numlock_color=-1;
                bothlock_color = -1;
                invert_numlock=false;
                swap_font_color=false;
                position="0,-40";
                halign="center";
                valign="center";

            }];
            label = [
                {
                    monitor="";
                    text = "cmd[update:1000] echo $<span foreground='##20d0fc'>$(date)</span>";
                    color="rgba(200,200,200,1.0)";
                    font_size=15;
                    font_family="Fira Semibold";
                    position = "0,0";
                    halign="right";
                    valign="bottom";
                    shadow_passes=5;
                    shadow_size=10;
                }
                {
                    monitor="";
                    text = "$USER";
                    color="rgba(200,200,200,1.0)";
                    font_size=30;
                    font_family="Fira Semibold";
                    position = "0,30";
                    halign="center";
                    valign="center";
                    shadow_passes=5;
                    shadow_size=15;
                }
            ];
            image = [
                {
                    monitor ="";
                    path = "/home/eli/dotfiles/profilePic.png";
                    size = 200;
                    border_color="rgb(20,208,252)";
                    border_size = 2;
                    position = "-300, -20";
                    halign = "center";
                    valign = "center";
                }
            ];
            background = [{
                monitor = "";
                path = "~/dotfiles/wallpaper/wallpaper.jpg";
                color= "rgb(25,20,20)";
                blur_passes=2;
            }];
        };
    };
}

