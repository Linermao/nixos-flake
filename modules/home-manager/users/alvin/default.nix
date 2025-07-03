{ config, pkgs, paths, ... }:

let
  userRoot = builtins.dirOf ./.;
  configsPath = "${userRoot}/configs";
  resourcesPath = "${userRoot}/resources";
in
{
  imports = [
    (import ./apps { inherit config pkgs configsPath resourcesPath; })
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