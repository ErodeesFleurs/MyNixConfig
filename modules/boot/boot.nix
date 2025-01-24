{ pkgs, ... }:

{
  # Bootloader.
  boot = {
    loader = {
      systemd-boot = {
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
    kernelPackages = pkgs.linuxPackages_6_12;
    # kernelPackages = pkgs.linuxPackages_latest;
  };
}
