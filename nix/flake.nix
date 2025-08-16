{
    description="My system config";


    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

    };
    outputs = {self, nixpkgs, home-manager, ...}@inputs:
        let 
            system = "x86_64-linux";
        in {

            nixosConfigurations.elinix = nixpkgs.lib.nixosSystem {
                specialArgs = {
                    inherit inputs system;
                };
            };
            modules = [
                ./nixos/configuration.nix
            ];

            homeConfigurations.eli = home-manager.lib.homeManagerConfiguration {
                pkgs = nixpkgs.legacyPackages.${system};
                modules = [ ./home-manager/home.nix];
            };
        };

}
