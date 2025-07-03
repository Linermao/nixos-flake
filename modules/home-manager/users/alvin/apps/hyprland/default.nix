{ inputs, pkgs, configsPath, resourcesPath, ... }:
{
  imports = [
    # ./config
    (import ./hyprland.nix { inherit configsPath resourcesPath; })
    (import ./waybar.nix { inherit configsPath resourcesPath; })
    (import ./rofi.nix { inherit configsPath resourcesPath; })
    (import ./swww.nix { inherit configsPath resourcesPath; })
    inputs.hyprland.homeManagerModules.default
  ];

  # variables
  home.sessionVariables = {
    NIXOS_OZONE_WL = 1;
    __GL_GSYNC_ALLOWED = 0;
    __GL_VRR_ALLOWED = 0;
    _JAVA_AWT_WM_NONEREPARENTING = 1;
    DISABLE_QT5_COMPAT = 0;
    GDK_BACKEND = "wayland";
    ANKI_WAYLAND = 1;
    DIRENV_LOG_FORMAT = "";
    WLR_DRM_NO_ATOMIC = 1;
    MOZ_ENABLE_WAYLAND = 1;
    WLR_BACKEND = "vulkan";
    WLR_RENDERER = "vulkan";
    WLR_NO_HARDWARE_CURSORS = 1;
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_TYPE = "wayland";
    XDG_SESSION_DESKTOP = "Hyprland";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
  };
}