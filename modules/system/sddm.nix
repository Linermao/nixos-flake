{ inputs, pkgs, paths, ... }:

{
  services.displayManager = {
    sddm.enable = true;
    sddm.theme = "pixel-sakura";
    sddm.wayland.enable = false;
  };

  environment.etc."sddm/themes/pixel-sakura".source = "${paths.resources}/sddm-theme";

  fonts = {
    packages = [
      (pkgs.runCommand "arcadeclassic-font" {} ''
        mkdir -p $out/share/fonts/truetype
        cp ${paths.resources}/sddm-theme/Fonts/ARCADECLASSIC.ttf $out/share/fonts/truetype/
      '')
    ];
  };
  fonts.fontDir.enable = true;
}
