{ config, ... }:

let
  themeName = if config.stylix.polarity == "dark" then "gruvbox-dark" else "gruvbox-light";
in
{
  services.vicinae = {
    enable = true;
    autoStart = true;
    useLayerShell = false;
    settings = {
      theme.name = themeName;
    };
  };
}
