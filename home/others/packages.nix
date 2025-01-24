{
  pkgs,
  nix-alien,
  swww,
  fleurs-nur,
  ...
}:

{
  home.packages = with pkgs; [
    hyprpicker
    hyprsunset
    hyprcursor
    hyprshot
    swww.packages.${pkgs.system}.swww
    waypaper

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
    nix-alien.packages.${pkgs.system}.nix-alien
    okular
    kchmviewer

    fish

    qq
    wechat-uos
    hmcl
    osu-lazer-bin
    telegram-desktop
    localsend
    # aseprite
    blender
    discord
    solaar
    pcmanfm
  ];

}
