{ config, pkgs, ... }:

{
  imports = [ ./apps/zsh.nix ./apps/hyprland.nix ];

  home = {
    username = "eddy";
    homeDirectory = "/home/eddy";
    packages = with pkgs; [ httpie git kitty ];
    sessionVariables = { GDK_BACKEND = "wayland"; };
  };

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

