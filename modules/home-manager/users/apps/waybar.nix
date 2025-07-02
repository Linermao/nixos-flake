{ configsPath, pkgs, ... }:

{
  home.packages = with pkgs; [
      waybar
  ];
  
  home.file = {
    ".config/waybar" = {
      source = "${configsPath}/.config/waybar";
      recursive = true;
    };
  }
}
