{
  pkgs,
  inputs,
  hyprland-qtutils,
  fleurs-nur,
  nix-alien,
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
    nix-alien.packages.${pkgs.system}.nix-alien

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

    # fleurs-nur.packages.${pkgs.system}.openstarbound
    # fleurs-nur.packages.x86_64-linux.openstarbound
  ];

}
