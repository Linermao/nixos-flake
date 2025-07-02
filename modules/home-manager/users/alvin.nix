{ config, pkgs, ... }:

{
  imports = [
    ./apps
  ];

  # Other useful tools
  programs.bat.enable = true;
  programs.eza.enable = true;
  programs.zoxide.enable = true;
  programs.fzf.enable = true;
}