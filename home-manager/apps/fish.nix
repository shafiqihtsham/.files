{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = { ll = "ls -l"; };
    plugins = [{
      name = "tide";
      src = pkgs.fishPlugins.tide.src;
    }];
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
  };
}
