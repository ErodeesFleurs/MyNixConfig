{ pkgs, ... }:

{
  imports = [
    ./i18n.nix
    ./ime.nix
    ./time.nix
  ];
}
