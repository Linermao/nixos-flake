{ pkgs, ... }:

{
  imports = [
    ./apps
  ];

  home.packages = with pkgs; [
    home-manager
  ];

  home.sessionVariables = {
    nix_resources = "~/nix_flakes/resources";
  }
}