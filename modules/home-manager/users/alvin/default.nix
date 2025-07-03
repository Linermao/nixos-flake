{ config, pkgs, inputs, ... }:

let
  userRoot = builtins.dirOf ./.;
  configsPath = "${userRoot}/configs";
  resourcesPath = "${userRoot}/resources";
in
{
  imports = [
    (import ./apps { inherit config pkgs inputs configsPath resourcesPath; })
  ];

  home.packages = with pkgs; [
    home-manager
  ];

  home.file = {
    "nixos/resources" = {
      source = "${resourcesPath}";
      recursive = true;
      force = true;
    };
  };
}