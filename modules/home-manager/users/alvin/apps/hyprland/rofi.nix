{ config, pkgs, paths, ... }:

{
  home.packages = with pkgs; [ 
    rofi-wayland 
  ];

  home.file = {
    ".config/rofi" = {
      source = "${paths.configs}/Configs/.config/rofi";
      recursive = true;
    };
  };
}