{
  pkgs,
  inputs,
  hyprland-qtutils,
  fleurs-nur,
  ...
}:

let
  osb = pkgs.callPackage ./osb/openstarbound.nix { };

in
{
  home.packages = with pkgs; [
    osb
  ];
}
