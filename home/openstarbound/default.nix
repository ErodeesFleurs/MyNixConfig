{
  pkgs,
  inputs,
  hyprland-qtutils,
  fleurs-nur,
  ...
}:

let
    osb = pkgs.callPackage ./osb/openstarbound.nix {};

{
  home.packages = with pkgs; [
    osb
  ];

}
