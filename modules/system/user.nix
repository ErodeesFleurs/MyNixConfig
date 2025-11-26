{ pkgs, ... }:
{
  services.userborn = {
    enable = true;
  };

  users = {
    mutableUsers = false;
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
      hashedPassword = "$y$j9T$lEBP6wilJ51l9P428o54H.$AL.hMk0IoywkKs9pksmaHhieg.zdWMpZMbK4p2rAE86";
    };
  };
}
