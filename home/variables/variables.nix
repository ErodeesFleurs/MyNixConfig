{ ... }:

{
  home = {
    sessionVariables = {
      # 设置默认的浏览器
      BROWSER = "chromium";
      # 设置默认的终端
      TERMINAL = "ghostty";
      # 设置默认的编辑器
      EDITOR = "hx";
      # 设置默认的文件管理器
      FILE_MANAGER = "dolphin";

      NIXOS_OZONE_WL = "1";

      WLR_NO_HARDWARE_CURSORS = "1";

      SDL_VIDEODRIVER = "wayland";
    };
  };
}
