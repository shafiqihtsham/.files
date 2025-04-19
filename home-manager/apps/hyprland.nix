{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    xwayland.enable = true;
    settings = {

      monitor = [ "WL-1,2560x1440@144,0x0,1" ];

      decoration = {
        shadow_offset = "0 5";
        "col.shadow" = "rgba(00000099)";
      };

      "$mod" = "ALT";
      "$terminal" = "kitty";
      "$menu" = "wofi -I -M fuzzy -S drun";

      bind = [
        "$mod, Q, exec, $terminal"
        "$mod, W, exec, $menu"
        "$mod, E, killactive"
      ];

      bindm = [
        # mouse movements
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
        "$mod, mouse:272, resizewindow"
      ];
    };
  };
}
