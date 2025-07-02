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
    in {
      nixosConfigurations = {
        desktop = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/desktop ];
          specialArgs = {
            host = "nixos_desktop";
            paths = { configs = ./configs; };
            inherit self inputs configsPath pkgs;
          };
        };
      };
    };
}
