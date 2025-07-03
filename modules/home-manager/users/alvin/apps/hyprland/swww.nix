{ pkgs, ... }:

let
  swww-launch = pkgs.writeShellScriptBin "swww_launch" (builtins.readFile ../../scripts/swww_launch.sh);
in
{
  home.packages = with pkgs; [
    swww
    swww-launch
  ];
}