{ pkgs, ... }:

{

  imports = [
    ./home
  ];

  home = {
    username = "fleurs";
    homeDirectory = "/home/fleurs";
    packages = with pkgs; [
      vscode
      rar
      onlyoffice-bin
      go-musicfox
      aria2
    ];
    stateVersion = "24.11";
  };

  programs.home-manager.enable = true;
}
