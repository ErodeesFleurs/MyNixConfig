{ config, pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "tokyo-night"
    ];
    userSettings = {
      buffer_font_family = "CaskaydiaCove Nerd Font Mono";
      ui_font_family = "CaskaydiaCove Nerd Font Propo";
      theme = {
        mode = "system";
        dark = "Tokyo Night";
        light = "Tokyo Night Storm";
      };
    };
  };
}
