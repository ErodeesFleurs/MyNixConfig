{ config, pkgs, ... }:

{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = true;
      splash = true;
      splash_offset = 2.0;

      preload = [
        "~/.config/hypr/wallpapers/os_tan_wallpaper_1.png"
      ];

      wallpaper = [
        ", ~/.config/hypr/wallpapers/os_tan_wallpaper_1.png"
      ];
    };
  };
}
