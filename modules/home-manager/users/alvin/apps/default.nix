{ config, pkgs, inputs, configsPath, resourcesPath, ... }:

let
  sharedArgs = {
    inherit config pkgs inputs configsPath resourcesPath;
  };

  modules = [
    ./hyprland
    
    ./dolphin.nix
    ./firefox.nix
    ./fish.nix
    ./git.nix
    ./kitty.nix
  ];
in
{
  imports = builtins.map (m: import m sharedArgs) modules;
}