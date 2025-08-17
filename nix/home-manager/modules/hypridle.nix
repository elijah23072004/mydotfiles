{
    services.hypridle= {
        enable=true;
        settings = {
            general = {
                ignore_dbus_inhibit=false;
            };
            listener = [
                {
                #hyprlock
                timeout=900;
                on-timeout="hyprlock";
                }
                {
                    #dpms timeout
                    timeout=660;
                    on-timeout="hyprctl dispatch dpms off";
                    on-resume="hyprctl dispatch dpms on";
                }
                {
                    #suspend 
                    timeout=3600;
                    on-timeout="systemctl suspend";
                }
            ];
        };
    };
}

