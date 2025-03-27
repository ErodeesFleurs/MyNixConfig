{ ... }:

{
  home = {
    sessionVariables = {
      # 设置默认的浏览器
      BROWSER = "chromium";
      # 设置默认的终端
      TERMINAL = "alacritty";
      # 设置默认的编辑器
      EDITOR = "nvim";
      # 设置默认的文件管理器
      FILE_MANAGER = "pcmanfm";
       
      NIXOS_OZONE_WL = "1";
      
      WLR_NO_HARDWARE_CURSORS = "1";

      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";
      XDG_SESSION_DESKTOP = "Hyprland";

      SDL_VIDEODRIVER = "wayland";
    };
  }
}
