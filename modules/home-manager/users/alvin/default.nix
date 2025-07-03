{ config, pkgs, paths, ... }:

{
  imports = [
    ./apps
  ];

  home.packages = with pkgs; [
    home-manager
  ];

  home.sessionVariables = {
    NIX_ROOT = "${paths.root}";
    NIX_RESOURCES = "${paths.resources}";
  };

  home.activation.checkPaths = ''
    echo "NIX_ROOT: ${paths.root}"
    echo "NIX_RESOURCES: ${paths.resources}"
    echo "config: ${paths.configs}"
  '';
}