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

  services = {
    openssh = {
      enable = true;
    };
  }; # 启动ssh服务

  # 启动wifi托盘
  programs = {
    nm-applet = {
      enable = true;
      indicator = true;
    };
  };
}
