{ inputs, pkgs, paths, ... }:

{
  services.displayManager = {
    sddm.enable = true;
    sddm.theme = "pixel-sakura";
  };
  environment.etc."sddm/themes/pixel-sakura".source = "${paths.resources}/sddm-theme";
}
