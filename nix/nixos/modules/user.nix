{
    users.users.eli = {
        isNormalUser = true;
        description = "eli";
        extraGroups = [ "networkmanager" "wheel"  "input"];
        packages = with pkgs; [];
    };


}
