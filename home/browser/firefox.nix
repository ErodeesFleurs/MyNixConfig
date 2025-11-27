{ ... }:
{
  programs.firefox = {
    enable = true;
    profiles = {
      fleurs = {

      };
    };
  };

  stylix.targets.firefox = {
    colorTheme.enable = true;
    profileNames = [ "fleurs" ];
  };
}
