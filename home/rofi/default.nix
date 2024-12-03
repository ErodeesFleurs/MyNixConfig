{ pkgs, ... }:

{

  home.file.".config/rofi/powermenu" = {
    source = ./powermenu;
    recursive = true;
    executable = true;
  };

  home.file.".config/rofi/launchers" = {
    source = ./launchers;
    recursive = true;
    executable = true;
  };

  home.file.".config/rofi/themes" = {
    source = ./themes;
    recursive = true;
    executable = true;
  };

  home.file.".config/rofi/wifi" = {
    source = ./wifi;
    recursive = true;
    executable = true;
  };

  imports = [
    ./rofi.nix
  ];
}
