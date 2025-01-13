{ pkgs, ... }:

{
  # 启动wifi托盘
  programs.nm-applet = {
    enable = true;
    indicator = true;
  };

  # 启动蓝牙
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  xdg = {
    portal = {
      enable = true;
      xdgOpenUsePortal = true;
    };
  };
}
