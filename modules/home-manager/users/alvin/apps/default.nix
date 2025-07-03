{ configsPath, resourcesPath, ... }:
{
  imports = [
    (import ./hyprland { inherit configsPath resourcesPath; })

    (import ./dolphin.nix { inherit configsPath resourcesPath; })
    (import ./firefox.nix { inherit configsPath resourcesPath; })
    (import ./fish.nix { inherit configsPath resourcesPath; })
    (import ./git.nix { inherit configsPath resourcesPath; })
    (import ./kitty.nix { inherit configsPath resourcesPath; })
  ];
}