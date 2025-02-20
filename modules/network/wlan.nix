{ ... }:

{
  networking = {
    hostName = "spectre";
    networkmanager = {
      enable = true;
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
