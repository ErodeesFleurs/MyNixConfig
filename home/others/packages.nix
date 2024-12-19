{ pkgs, openstarbound, ... }:

{
  home.packages = with pkgs; [
    hyprpicker
    hyprsunset
    hyprcursor
    hyprpaper
    hyprshot
    wl-clipboard
    cliphist

    udiskie
    libnotify
    brightnessctl

    unzip
    zip
    ark
    okteta
    lazygit

    fish

    qq
    wechat-uos
    hmcl
    osu-lazer-bin
    telegram-desktop
    localsend
    skia-aseprite

    # openstarbound
  ];

}
