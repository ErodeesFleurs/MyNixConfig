{ pkgs, ... }:

{
  stylix = {
    enable = true;
    autoEnable = true;

    image = ../../media/wallpapers/1.jpg;

    cursor = {
      package = pkgs.catppuccin-cursors.mochaDark;
      name = "catppuccin-mocha-dark-cursors";
      size = 24;
    };

    fonts = {

      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };

      monospace = {
        package = pkgs.nerd-fonts.dejavu-sans-mono;
        name = "CaskaydiaMono Nerd Font Mono";
      };

      sansSerif = {
        package = pkgs.source-han-sans;
        name = "Source Han Sans SC";
      };

      serif = {
        package = pkgs.source-han-serif;
        name = "Source Han Serif SC";
      };
    };

    opacity = {
      terminal = 0.7;
    };

    polarity = "light";
  };
}
