{ pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./dev.nix
  ];
}
