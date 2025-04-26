{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    xwayland.enable = true;
    settings = {

      monitor = [ "WL-1,2560x1440@144,0x0,1" ];

      general = {
        "col.active_border" = "rgba(00FF00FF)";
        "col.inactive_border" = "rgba(595959aa)";
      };

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
        "$mod, TAB, cyclenext"
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
