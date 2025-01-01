{
  pkgs,
  inputs,
  hyprland-qtutils,
  fleurs-nur,
  ...
}:

let
  osb = pkgs.callPackage ./osb { };

in
{
  home.packages = with pkgs; [
    osb
  ];
}
