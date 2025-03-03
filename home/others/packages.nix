{
  pkgs,
  nix-alien,
  fenix,
  nur,
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
    nix-alien.packages.${pkgs.system}.nix-alien
    kdePackages.okular
    kchmviewer

    fish

    qq
    wechat-uos
    feishu
    nur.repos.xddxdd.dingtalk

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
