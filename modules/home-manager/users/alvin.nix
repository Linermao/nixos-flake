{ pkgs, ... }:

{
  imports = [
    ./apps
  ];

  home.packages = with pkgs; [
    home-manager
  ];
}