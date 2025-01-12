{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = [ "fleurs" ];

  virtualisation.libvirtd.enable = true;

  virtualisation.spiceUSBRedirection.enable = true;
}
