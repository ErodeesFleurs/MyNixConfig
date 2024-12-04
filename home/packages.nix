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

    zip
    xarchiver

    fish

    qq
    wechat-uos
  ];

}
