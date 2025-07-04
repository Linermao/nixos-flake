{ inputs, pkgs, paths, ... }:

{
  services.displayManager = {
    sddm.enable = true;
    theme = "pixel-sakura";
  };
  environment.etc."sddm/themes/pixel-sakura".source = ../../resources/sddm-theme;
}
