{
  pkgs,
  nix-alien,
  fleurs-nur,
  ...
}:

{
  nixpkgs = {
    config = {
      allowUnfree = true;
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

    unzip
    zip
    ark
    lazygit
    nix-alien.packages.${pkgs.system}.nix-alien
    okular
    kchmviewer

    fish

    qq
    wechat-uos
    feishu

    hmcl
    osu-lazer-bin
    telegram-desktop
    localsend
    aseprite
    blender
    discord
    solaar
    pcmanfm
  ];

}
