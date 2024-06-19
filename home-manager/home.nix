{ config, pkgs, ... }:

{
  imports = [
    ./apps/zsh.nix
  ];
  
  home.username = "eddy";
  home.homeDirectory = "/home/eddy";

  home.packages = with pkgs; [
    httpie
  ];

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  home.stateVersion = "23.11";
}

