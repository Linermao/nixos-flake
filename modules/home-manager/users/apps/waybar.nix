{ config, pkgs, ... }:

{
  programs.waybar.enable = true;
  programs.waybar = {
    settings = {
      mainBar = {
        modules-left = [
          "hyprland/workspaces"
          "hyprland/window"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "network"
        ];
      };
    };
  };
}
