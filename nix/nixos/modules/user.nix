{ pkgs, ... }: {
    users.users.eli = {
        isNormalUser = true;
        description = "eli";
        extraGroups = [ "networkmanager" "wheel"  "input"];
        packages = with pkgs; [];
    };
    security.sudo.extraRules = [
        { 
            users = [ "myusername" ];
            commands = [
                { command = "ALL" ;
                    options = ["NOPASSWD"];
                }
            ];
        }
    ];

}
