{ ... }:

# let
#   themeName = if config.stylix.polarity == "dark" then "vicinae-dark" else "vicinae-light";
# in
{
  services.vicinae = {
    enable = true;
    autoStart = true;
    useLayerShell = false;
    # settings = {
    #   theme.name = "vicinae-light";
    # };
  };
}
