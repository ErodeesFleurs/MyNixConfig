{ pkgs, ... }:
{
  services.userborn = {
    enable = true;
  };

  users = {
    users.fleurs = {
      isNormalUser = true;
      description = "ErodeesFleurs";
      extraGroups = [
        "networkmanager"
        "wheel"
        "libvirt"
        "kvm"
      ];
      shell = pkgs.nushell;
    };
  };
}
