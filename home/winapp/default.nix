{ pkgs, ... }:

{
  home.file.".config/winapps" = {
    source = ./winapps;
    recursive = true;
    executable = true;
  };

  imports = [
    ./winapp.nix
  ];
}
