{ config, pkgs, configsPath, ... }:

let
  rofi-launch = pkgs.writeShellScriptBin "rofi_launch" (builtins.readFile ../../scripts/rofi_launch.sh);
in
{
  home.packages = with pkgs; [ 
    rofi-wayland
    rofi-launch
  ];

  home.file = {
    ".config/rofi" = {
      source = "${configsPath}/.config/rofi";
      recursive = true;
      force = true;
    };
  };
}
