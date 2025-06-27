{ pkgs, ... }:

{
  programs.dconf = {
    enable = true;
    # profiles = {
    #   user.databases = [
    #      { 
    #       lockAll = true;
    #       settings = {
    #         "org/virt-manager/virt-manager/connections" = {
    #           autoconnect = [ "qemu:///system" ];
    #           uris = [ "qemu:///system" ];
    #         };
    #       };
    #     }
    #   ]
    # }
  };
}
