{ inputs, pkgs, paths, ... }:

{
  systemd.user.targets.hyprland-session.Unit.Wants = [
    "xdg-desktop-autostart.target"
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

    xwayland = {
      enable = true;
      # hidpi = true;
    };
    # enableNvidiaPatches = false;
    systemd.enable = true;
  };

  home.file = {
    ".config/hypr" = {
      source = "${paths.configs}/.config/hypr";
      recursive = true;
      force = true;
    };
  };
}