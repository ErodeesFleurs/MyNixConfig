{
  pkgs,
  lib,
  fleurs-nur,
  ...
}:

{
  nixpkgs = {
    config = {
      allowUnfree = true;
      permittedInsecurePackages = [
        "qtwebengine-5.15.19"
      ];
    };
  };

  home.packages = with pkgs; [
    hyprpicker
    hyprsunset
    hyprcursor
    hyprshot

    wl-clipboard
    cliphist

    udiskie
    libnotify
    brightnessctl

    unzip
    zip
    kdePackages.ark
    lazygit
    kdePackages.okular
    kchmviewer

    fish

    qq
    wechat
    discord
    feishu
    telegram-desktop
    fleurs-nur.packages.${pkgs.system}.dingtalk
    # fleurs-nur.packages.${pkgs.system}.uudeck

    hmcl
    osu-lazer-bin

    # wpsoffice
    # aseprite
    blender
    pcmanfm
    filezilla
    openvpn
    typora
  ];

}
