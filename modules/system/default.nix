{ config, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./network.nix
    ./core-tools.nix
    ./nvidia.nix
    ./input.nix
    ./sound.nix
    ./services.nix
    ./users.nix
    ./hyprland.nix
    ./system.nix
  ];
}
