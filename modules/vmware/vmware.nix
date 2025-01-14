{ ... }:

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
    };
    spiceUSBRedirection = {
      enable = true;
    };
  };
}
