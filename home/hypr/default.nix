{ ... }:

{

  home.file.".config/hypr/scripts" = {
    source = ./scripts;
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
