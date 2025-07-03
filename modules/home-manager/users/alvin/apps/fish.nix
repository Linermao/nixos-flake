{ paths, ... }:

{
  programs.fish.enable = true;

  home.file = {
    ".config/fish" = {
      source = "${paths.configs}/.config/fish";
      recursive = true;
    };
  };
}