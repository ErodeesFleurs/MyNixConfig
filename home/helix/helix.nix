{ config, pkgs, ... }:

{
  # git 相关配置
  programs.helix = {
    enable = true;
    settings = {
      theme = "tokyonight";
    };
  };
}
