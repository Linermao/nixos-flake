{ ... }:

{
  time.timeZone = "Asia/Shanghai";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings.substituters = [
    "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
    "https://mirror.sjtu.edu.cn/nix-channels/store"
  ];
  # clean no use garbages
  services.nix-collect-garbage = {
    enable = true;
    dates = "weekly";
    options = [ "--delete-older-than" "7d" ];
  };

  system.stateVersion = "25.05";
}