{ paths, ... }:

{
  time.timeZone = "Asia/Shanghai";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings.substituters = [
    "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
    "https://mirror.sjtu.edu.cn/nix-channels/store"
  ];

  system.stateVersion = "25.05";

  environment.sessionVariables = {
    NIX_TEST = "TEST";
    NIX_ROOT = "${paths.root}";
    NIX_RESOURCES = "${paths.resources}";
  };
}