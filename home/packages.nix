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
    ark

    fish

    qq
    wechat-uos
  ];

}
