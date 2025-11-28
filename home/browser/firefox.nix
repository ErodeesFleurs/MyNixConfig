{ ... }:
{
  programs.firefox = {
    enable = true;
    profiles = {
      fleurs = {
        extensions = {
          force = true;
        };
      };
    };
  };

  stylix.targets.firefox = {
    colorTheme.enable = true;
    profileNames = [ "fleurs" ];
  };
}
