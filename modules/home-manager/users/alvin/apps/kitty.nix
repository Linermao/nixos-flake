{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    theme = "Tokyo Night";
    font.name = "FiraCode Nerd Font";
    settings = {
      enable_audio_bell = "no";
      cursor_shape = "beam";
    };
  };
}