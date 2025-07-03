{ config, pkgs, paths, ... }:

{
  home.packages = with pkgs; [ 
    rofi-wayland 
  ];

  home.file = {
    ".config/rofi" = {
      source = "${paths.configs}/.config/rofi";
      recursive = true;
      force = true;
    };
  };
}