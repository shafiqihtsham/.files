{ config, pkgs, ... }:

{
  imports = [
    ./apps/fish.nix
    ./apps/hyprland.nix
    ./apps/kitty.nix
    ./apps/neovim.nix
    ./apps/git.nix
  ];

  home = {
    username = "eddy";
    homeDirectory = "/home/eddy";
    packages = with pkgs; [
      httpie
      git
      kitty
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
      typescript
      nodejs
      nodePackages.typescript-language-server
    ];
    sessionVariables = { GDK_BACKEND = "wayland"; };
  };

  home.stateVersion = "23.11";
}

