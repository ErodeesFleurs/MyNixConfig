{ ... }:

{
  programs = {
    steam = {
      enable = true;
      remotePlay = {
        openFirewall = true;
      };

      dedicatedServer = {
        openFirewall = true;
      };

      extest = {
        enable = true;
      };

      gamescopeSession = {
        enable = true;
      };

      protontricks = {
        enable = true;
      };
    };
  };
}
