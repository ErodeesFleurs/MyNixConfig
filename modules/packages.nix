{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    lshw
    nixfmt-rfc-style
    hyprpolkitagent
    lxqt.lxqt-policykit
    xdg-utils
    steamcmd
  ];

  programs.nix-ld.enable = true;
}
