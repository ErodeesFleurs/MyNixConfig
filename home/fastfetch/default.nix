{ pkgs, ... }:

{

  home.file.".config/fastfetch/logo" = {
    source = ./logo;
    recursive = true;
    executable = true;
  };

  imports = [
    ./fastfetch.nix
  ];
}
