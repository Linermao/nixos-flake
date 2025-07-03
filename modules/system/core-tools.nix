{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # network
    curl
    wget
    nmap
    tcpdump

    # basic tools
    git
    vim
    nano
    tree
    bottom
  ];
}
