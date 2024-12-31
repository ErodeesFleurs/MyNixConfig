{
  config,
  lib,
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    vim
    #         microsoft-edge
    lshw
    nixfmt-rfc-style
    docker
  ];

  virtualisation.docker.enable = true;

  programs.dconf.enable = true;
  programs.nix-ld.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall
    extest.enable = true;
    gamescopeSession.enable = true;
    protontricks.enable = true;
  };

  #     nixpkgs.config.permittedInsecurePackages = [
  #         "openssl-1.1.1w"
  #     ];
}
