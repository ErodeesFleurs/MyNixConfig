{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    lshw
    nixfmt-rfc-style
    docker
    hyprpolkitagent
    lxqt.lxqt-policykit
  ];

  virtualisation.docker.enable = true;

  programs.dconf.enable = true;
  programs.nix-ld.enable = true;
}
