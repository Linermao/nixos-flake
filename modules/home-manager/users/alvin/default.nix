{ config, pkgs, paths, ... }:

{
  imports = [
    ./apps
  ];

  home.packages = with pkgs; [
    home-manager
  ];

  home.sessionVariables = {
    NIX_TEST = "TEST";
    NIX_ROOT = "${paths.root}";
    NIX_RESOURCES = "${paths.resources}";
  };
}