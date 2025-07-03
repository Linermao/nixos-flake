{ inputs, host, paths, pkgs, ... }:

{
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { inherit inputs host pkgs paths; };
    backupFileExtension = "backup";

    users = {
      alvin = {
        imports = [ ./users/alvin ];
        home.username = "alvin";
        home.homeDirectory = "/home/alvin";
        home.stateVersion = "25.05";
        programs.home-manager.enable = true;
      };

      # Linermao = {
      #   imports = [ ./users/Linermao ];
      #   home.username = "Linermao";
      #   home.homeDirectory = "/home/Linermao";
      #   home.stateVersion = "25.05";
      #   programs.home-manager.enable = true;
      # };
    };
  };
}