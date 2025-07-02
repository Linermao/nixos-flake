{ inputs, username, host, paths, pkgs, ... }:

{
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { inherit inputs username host pkgs paths; };
    backupFileExtension = "backup";

    users = {
      alvin = {
        imports = [ ./users/alvin.nix ];
        home.username = "alvin";
        home.homeDirectory = "/home/alvin";
        home.stateVersion = "25.05";
        programs.home-manager.enable = true;
      };

      # Linermao = {
      #   imports = [ ./users/Linermao.nix ];
      #   home.username = "Linermao";
      #   home.homeDirectory = "/home/Linermao";
      #   home.stateVersion = "25.05";
      #   programs.home-manager.enable = true;
      # };
    };
  };
}