{ config, pkgs, ... }:

{
  services = {
    v2ray = {
      enable = true;
      config = {
        inbounds = [
          {
            listen = "127.0.0.1";
            port = 1080;
            protocol = "socks";
            settings = {
              udp = true;
            };
          }
        ];
        outbounds = [
          {
            protocol = "freedom";
          }
        ];
      };
    };
    v2raya = {
      enable = true;
    };
  };
}
