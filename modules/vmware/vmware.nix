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
      onBoot = "ignore";
      onShutdown = "shutdown";
      qemu = { 
        ovmf.enable = true;
        swtpm.enable = true;
        runAsRoot = true;
        vhostUserPackages = with pkgs; 
          [ virtiofsd ];
      };
    };
    spiceUSBRedirection = {
      enable = true;
    };
  };
}
