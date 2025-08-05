{ xlib, colors, ... }:

{
  programs.hyprland.enable = true;

  hj.files.".config/hypr/hyprland.conf" = {
    generator = xlib.generators.toHyprlang {
      topCommandsPrefixes = [
        "$"
        "bezier"
      ];
    };

    value = {
      exec-once = [
        "hyprpaper"
        "quickshell -p ${builtins.toString ./../../../shell}"
      ];

      monitor = [
        "DP-1, 1920x1080@144, 0x0, 1"
        "DP-3, 1920x1080@240, 1920x-300, 1"
        "HDMI-A-1, 1920x1080@60, 3840x10, 1"
      ];

      ecosystem = {
        no_update_news = true;
      };

      general = {
        gaps_in = 5;
        gaps_out = 5;
        border_size = 3;
        allow_tearing = true;
        "col.active_border" = "rgb(${colors.brightOrange}) rgb(${colors.orange}) 45deg";
        "col.inactive_border" = "rgb(${colors.gray})";
        layout = "dwindle";
      };

      decoration = {
        rounding = 10;
        rounding_power = 2;

        shadow = {
          enabled = false;
          range = 4;
          render_power = 3;
          color = "rgb(${colors.gray})";
        };

        blur = {
          enabled = true;
          size = 3;
          passes = 2;
          vibrancy = 0.17;
        };
      };

      bezier = [
        "easeOut, 0.25, 1, 0.35, 1"
        "easeInOut, 0.65, 0.05, 0.35, 1"
      ];

      animation = [
        "windows, 1, 3, easeInOut"
        "border, 1, 8, easeOut"
      ];

      animations = {
        enabled = true;
      };

      dwindle.preserve_split = true;

      misc = {
        disable_hyprland_logo = true;
      };

      input = {
        kb_layout = "us";
        repeat_delay = 300;
        follow_mouse = 1;
        force_no_accel = true;
        sensitivity = 0;
      };

      cursor = {
        inactive_timeout = 0;
      };

      "$mainMod" = "SUPER";

      bind = [
        "$mainMod, N, exec, alacritty"
        "$mainMod, I, exec, firefox"
        "$mainMod, E, exec, nautilus"
        "$mainMod, Q, killactive"
        "$mainMod, X, exit"
        "$mainMod, J, togglesplit"
        "$mainMod, F, fullscreen"

        "$mainMod SHIFT, S, exec, hyprshot -m region --clipboard-only"

        "$mainMod, A, movefocus, l"
        "$mainMod, D, movefocus, r"
        "$mainMod, W, movefocus, u"
        "$mainMod, S, movefocus, d"
        "$mainMod, Left, movewindow, l"
        "$mainMod, Right, movewindow, r"
        "$mainMod, Up, movewindow, u"
        "$mainMod, Down, movewindow, d"
      ];

      bindr = [
        "$mainMod, Super_L, exec, killall rofi || rofi -show drun"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      windowrule = [
        "suppressevent maximize, class:.*"
        "nofocus, class:^$, title:^$, xwayland:1, floating:1, fullscreen:0, pinned:0"
        "rounding 0, class:Rofi"
      ];
    };
  };
}
