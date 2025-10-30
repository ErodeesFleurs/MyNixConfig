{ ... }:

{

  programs.nixcord = {
    enable = true;

    vesktop.enable = true;

    dorion = {
      enable = true;
      autoClearCache = true;
      disableHardwareAccel = false;
      rpcServer = true;
      rpcProcessScanner = true;
      desktopNotifications = true;
      unreadBadge = true;
    };

    config = {
      frameless = true;
      autoUpdate = false;
      notifyAboutUpdates = false;
      autoUpdateNotification = false;

      plugins = {};
    };
  };
}
