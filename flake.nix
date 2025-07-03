# This is my nixos configuration
# by Linermao

{
  description = "My NixOS flake config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager = { 
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    }; 

    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs,  ... } @inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
      flakeDir = toString self; # get flake dir_name

    in {
      nixosConfigurations = {
        desktop = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            host = "nixos_desktop";
            paths = { 
              root = "${flakeDir}";
              configs = ./configs;
              resources = "${flakeDir}/resources";
            };
            inherit self inputs pkgs;
          };
          
          modules = [ 
            ./hosts/desktop
            { home-manager.extraSpecialArgs = specialArgs; }
          ];
        };
      };
    };
}
