{ ... }:
{
  npkgs.config.allowUnfree = true;

  imports = [
    ./hardware-configuration.nix
    ./../../modules/system
  ];

  powerManagement.cpuFreqGovernor = "performance";
}