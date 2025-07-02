{ paths, pkgs, ... }:

{
  home.packages = with pkgs; [
      waybar
  ];

  home.file = {
    ".config/waybar" = {
      source = "${paths.configs}/.config/waybar";
      recursive = true;
    };
  };
}
