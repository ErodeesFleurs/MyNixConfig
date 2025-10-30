{ ... }:

{
  networking = {
    hostName = "spectre";
    networkmanager = {
      enable = true;
    };
    firewall = {
      allowedTCPPorts = [
        5900
        5901
      ];
    };
  };

  # 启动wifi托盘
  programs = {
    nm-applet = {
      enable = true;
      indicator = true;
    };
  };
}
