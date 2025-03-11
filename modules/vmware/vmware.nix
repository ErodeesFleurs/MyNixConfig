{ pkgs, ... }:

{
  programs = {
    virt-manager = {
      enable = true;
    };
  };

  users = {
    groups = {
      libvirtd = {
        members = [ "fleurs" ];
      };
    };
  };

  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = { 
        vhostUserPackages = with pkgs; 
          [ virtiofsd ];
      };
    };
    spiceUSBRedirection = {
      enable = true;
    };
  };
}
