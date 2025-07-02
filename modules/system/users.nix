{ pkgs, inputs, ... }:

{
  imports = [
    ./../home-manager
    inputs.home-manager.nixosModules.home-manager 
  ];

  users.users = {
    alvin = {
      isNormalUser = true;
      extraGroups = [ 
        "wheel" 
        "networkmanager" 
        "video"
        "input"
      ];
      shell = pkgs.fish;
    };

    # Linermao = {
    #   isNormalUser = true;
    #   extraGroups = [ 
    #     "wheel" 
    #     "networkmanager" 
    #     "video"
    #     "input"
    #   ];
    #   shell = pkgs.fish;
    # };
  };
  
  programs.fish.enable = true;
}
