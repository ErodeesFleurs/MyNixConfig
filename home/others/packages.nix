{
  pkgs,
  lib,
  fleurs-nur,
  fenix,
  ...
}:

{
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
    overlays = [
      fenix.overlays.default
    ];
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
    kdePackages.
    kchmviewerokular

    fish

    qq
    wechat-uos
    discord
    feishu
    fleurs-nur.packages.${pkgs.system}.dingtalk
    wpsoffice

    hmcl
    osu-lazer-bin
    telegram-desktop
    aseprite
    blender
    pcmanfm
    filezilla
  ];

}
