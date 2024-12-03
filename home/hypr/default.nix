{ pkgs, ... }:

{
  home.file.".config/hypr/wallpapers" = {
    source = ./wallpapers;
    recursive = true;
    executable = true;
  };

  home.file.".config/hypr/scripts" = {
    source = ./scripts;
    recursive = true;
    executable = true;
  };

  home.file.".local/share/icons" = {
    source = ./cursors;
    recursive = true;
    executable = true;
  };

  imports = [
    ./hyprland.nix
    ./hyprpaper.nix
    ./hyprlock.nix
    ./hypridle.nix
  ];
}
