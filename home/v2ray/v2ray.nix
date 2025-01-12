{ config, pkgs, ... }:

{
  services = {
    v2ray = {
      enable = true;
    };
    v2raya = {
      enable = true;
    };
  };
}
