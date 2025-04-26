{ config, pkgs, ... }:

{
  imports = [ ./apps/fish.nix ./apps/hyprland.nix ./apps/kitty.nix ];

  home = {
    username = "eddy";
    homeDirectory = "/home/eddy";
    packages = with pkgs; [
      httpie
      git
      kitty
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ];
    sessionVariables = { GDK_BACKEND = "wayland"; };
  };

  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "Ihtsham Shafiq";
    userEmail = "Ihtsham123@outlook.com";
  };

  home.stateVersion = "23.11";
}

