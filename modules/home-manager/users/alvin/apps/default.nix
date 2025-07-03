{ config, pkgs, inputs, configsPath, resourcesPath, ... }:

let
  sharedArgs = { inherit config pkgs inputs configsPath resourcesPath; };
in {
  imports = builtins.map (path: import path sharedArgs) [
    ./hyprland

    ./dolphin.nix
    ./firefox.nix
    ./fish.nix
    ./git.nix
    ./kitty.nix
  ];
}
