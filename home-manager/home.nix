{ config, pkgs, ... }:

{
  imports = [ ./apps/zsh.nix ./apps/hyprland.nix ];

  home.username = "eddy";
  home.homeDirectory = "/home/eddy";

  home.packages = with pkgs; [ httpie git kitty ];

  home.sessionVariables = { GDK_BACKEND = "wayland"; };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "Ihtsham Shafiq";
    userEmail = "Ihtsham123@outlook.com";
  };

  home.stateVersion = "23.11";
}

