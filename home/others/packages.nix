{
  pkgs,
  lib,
  inputs,
  ...
}:

{
  nixpkgs = {
    config = {
      allowUnfree = true;
      permittedInsecurePackages = [
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
    usbutils
    networkmanagerapplet

    unzip
    zip
    kdePackages.ark
    lazygit
    kdePackages.okular
    ueberzugpp
    ffmpeg

    (qq.override {
      commandLineArgs = [
        # "--ozone-platform=wayland"
        "--enable-wayland-ime"
        "--text-input-version=3"
        # "--wayland-text-input-version=3"
      ];
    })

    wechat
    discord
    feishu
    telegram-desktop
    inputs.fleurs-nur.packages.${pkgs.system}.dingtalk

    hmcl
    osu-lazer-bin

    # wpsoffice
    # aseprite
    steamcmd
    baidupcs-go
    blender
    pcmanfm
    filezilla
    openvpn
    typora

    base16-schemes
  ];

}
