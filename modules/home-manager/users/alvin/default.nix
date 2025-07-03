{ config, pkgs, paths, ... }:

{
  imports = [
    ./apps
  ];

  home.packages = with pkgs; [
    home-manager
  ];

  home.file = {
    "nixos/resources" = {
      source = "./resources";
      recursive = true;
      force = true;
    };
  };
}