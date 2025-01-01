{
  pkgs,
  hyprland-qtutils,
  fleurs-nur,
  ...
}:

{
  home.packages = with pkgs; [
    hyprpicker
    hyprsunset
    hyprcursor
    hyprshot
    hyprland-qtutils.packages.${pkgs.system}.default

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
    discord
    solaar
    pcmanfm

    fleurs-nur.packages.${pkgs.system}.openstarbound
  ];

}
