{ configsPath, ... }:

{
  programs.fish.enable = true;

  home.file = {
    ".config/fish" = {
      source = "${configsPath}/.config/fish";
      recursive = true;
      force = true;
    };
  };
}