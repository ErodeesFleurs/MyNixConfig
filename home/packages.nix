{ pkgs, ... }:

{
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
    ark
    okteta

    fish

    qq
    wechat-uos
  ];

}
