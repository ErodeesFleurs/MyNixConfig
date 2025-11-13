{
  pkgs,
  inputs,
  ...
}:

{
  nixpkgs = {
    config = {
      allowUnfree = true;
      permittedInsecurePackages = [ ];
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
    usbutils
    networkmanagerapplet

    unzip
    zip
    kdePackages.ark
    kdePackages.okular
    ffmpeg
    freerdp
    kdePackages.dolphin
    kdePackages.dolphin-plugins

    (qq.override {
      commandLineArgs = [
        "--enable-wayland-ime"
        "--text-input-version=3"
      ];
    })

    wechat
    feishu
    telegram-desktop
    inputs.xddxdd-nur.packages.${pkgs.stdenv.hostPlatform.system}.dingtalk

    osu-lazer-bin

    # wpsoffice
    # aseprite
    steamcmd
    baidupcs-go
    blender
    filezilla
    openvpn
    typora

    base16-schemes
  ];

}
