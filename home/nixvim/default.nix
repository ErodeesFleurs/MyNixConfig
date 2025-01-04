{ pkgs, ... }:

{
  imports = [
    ./nixvim.nix
    ./keymap.nix
  ];
}
