{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    lshw
    nixfmt-rfc-style
    hyprpolkitagent
    lxqt.lxqt-policykit
    xdg-utils
  ];

  programs.dconf.enable = true;
  programs.nix-ld.enable = true;
}
