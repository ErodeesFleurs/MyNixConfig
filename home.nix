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
      go-musicfox
      aria2
    ];
    stateVersion = "26.05";
  };

  programs.home-manager.enable = true;
}
