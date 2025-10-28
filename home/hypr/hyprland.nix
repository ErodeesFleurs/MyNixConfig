{ pkgs, hyprland, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;
    xwayland.enable = true;
    package = null;
    portalPackage = null;
    settings = {
      env = [
        "LIBVA_DRIVER_NAME,nvidia"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia"
        "XCURSOR_SIZE,24"
        "HYPRCURSOR_THEME,"
        "HYPRCURSOR_SIZE,24"
        "HYPRSHOT_DIR,$HOME/Pictures/Screenshots"

        "BROWSER,chromium"
        "TERMINAL,alacritty"
        "EDITOR,nvim"
        "FILE_MANAGER,pcmanfm"
      ];
      monitor = [ ",preferred,auto,1" ];
      exec-once = [
        "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        # "waybar"
        "ashell"
        "hyprpaper"
        "hypridle"
        "swww-daemon"
        "dunst"
        "udiskie"
        "fcitx5 -d"
        "wl-paste --watch cliphist store"
        # "systemctl --user status hyprpolkitagent.service"
        "lxqt-policykit-agent"
      ];
      "$mainMod" = "SUPER";
      "$terminal" = "alacritty";
      "$menu" = "sh ~/.config/rofi/launchers/launcher.sh";
      "$browser" = "chromium";
      "$colorpicker" = "hyprpicker -a";
      #通常
      general = {
        gaps_in = 5;
        gaps_out = 20;

        border_size = 2;

        # "col.active_border" = "rgba(cba6f7ff)";
        # "col.inactive_border" = "rgba(313244ff)";

        resize_on_border = false;

        allow_tearing = false;

        layout = "dwindle";

      };
      #装饰
      decoration = {
        rounding = 10;

        # Change transparency of focused and unfocused windows
        active_opacity = 1.0;
        inactive_opacity = 1.0;

        #shadow = {
        #    enabled = true;
        #    range = 4;
        #    render_power = 3;
        #    color = "rgba(1a1a1aee)";
        #};

        # https://wiki.hyprland.org/Configuring/Variables/#blur
        blur = {
          enabled = true;
          size = 10;
          passes = 1;

          vibrancy = 0.1696;
        };
      };
      #动画
      animations = {
        enabled = "yes";

        bezier = [
          "easeOutQuint,0.23,1,0.32,1"
          "easeInOutCubic,0.65,0.05,0.36,1"
          "linear,0,0,1,1"
          "almostLinear,0.5,0.5,0.75,1.0"
          "quick,0.15,0,0.1,1"
        ];

        animation = [
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 1.94, almostLinear, fade"
          "workspacesIn, 1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.94, almostLinear, fade"
        ];
      };

      dwindle = {
        pseudotile = true; # Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = true; # You probably want this
      };

      master = {
        new_status = "master";
      };
      #杂项
      misc = {
        force_default_wallpaper = 0; # Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = true; # If true disables the random hyprland logo / anime girl background. :(
      };
      #输入
      input = {
        kb_layout = "us";
        kb_variant = "";
        kb_model = "";
        kb_options = "";
        kb_rules = "";

        follow_mouse = 1;

        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.

        touchpad = {
          natural_scroll = false;
        };
      };
      #手势
      # gestures = {
      #   workspace_swipe = false;
      # };
      #设备
      device = {
        name = "epic-mouse-v1";
        sensitivity = -0.5;
      };
      #按键绑定
      bind = [
        "$mainMod, T, exec, $terminal"
        "$mainMod, R, exec, $menu"
        "$mainMod, P, exec, $colorpicker"
        "$mainMod, C, killactive"
        "$mainMod, M, exit"
        "$mainMod, V, togglefloating"
        "$mainMod, P, pseudo"
        "$mainMod, J, togglesplit"

        #截图
        ", PRINT, exec, hyprshot -m output"
        "$mainMod, PRINT, exec, hyprshot -m window"
        "$mainMod SHIFT, PRINT, exec, hyprshot -m region"

        "$mainMod SHIFT, R, exec, sh ~/.config/hypr/scripts/reload.sh" # 重启窗口管理器

        #使用 mainMod + 箭头键移动焦点
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"
        #使用 mainMod + SHIFT + [0-9] 切换工作区
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"
        #使用 mainMod + SHIFT + [0-9] 将活动窗口移动到工作区
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"
        #特殊workspace
        "$mainMod, S, togglespecialworkspace, magic"
        "$mainMod SHIFT, S, movetoworkspace, special:magic"
        #使用 mainMod + scroll 滚动浏览现有workspace
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"
      ];
      bindm = [
        #使用 mainMod + LMB/RMB 并拖动来移动/调整窗口大小
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
      bindel = [
        #用于调节音量和 LCD 亮度的笔记本电脑多媒体键
        ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
        ",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
        ",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
      ];
      bindl = [
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
      ];

      windowrulev2 = [
        #忽略应用程序的最大化请求。
        "suppressevent maximize, class:.*"
        #修复 XWayland 的一些拖拽问题
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
        #修复 wechat 多余边框
        "noborder, class:^(wechat)$,title:negative:^(朋友圈)$"
        "noblur, class:^(wechat)$,title:negative:^(朋友圈)$"
        "noshadow, class:^(wechat)$,title:negative:^(朋友圈)$"
      ];
    };
  };
  # ...
}
