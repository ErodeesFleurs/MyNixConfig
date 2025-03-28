{ pkgs, ... }:

{
  home.file.".config/hypr/wallpapers" = {
    source = ../../media/wallpapers;
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
    ./hypridle.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./hyprpaper.nix
  ];
}
