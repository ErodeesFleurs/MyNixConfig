{ pkgs, ... }:

let
  hyprland-qtutils = inputs.hyprland-qtutils.packages.${pkgs.system}.default;
in
{
  home.packages = with pkgs; [
    hyprpicker
    hyprsunset
    hyprcursor
    hyprshot
    hyprland-qtutils
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
    aseprite
    blender
    # openstarbound
  ];

}
