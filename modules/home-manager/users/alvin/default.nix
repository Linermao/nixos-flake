{ config, pkgs, paths, ... }:

{
  imports = [
    ./apps
  ];

  home.packages = with pkgs; [
    home-manager
  ];
}