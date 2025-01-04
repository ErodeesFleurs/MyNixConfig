{
  config,
  pkgs,
  nixvim,
  ...
}:

let
  keymaps = import ./keymaps.nix;
  plugins = (import ./plugins).plugins;
in

{
  imports = [
    nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
    enable = true;

    colorschemes.tokyonight.enable = true;

    plugins = plugins;

    opts = {
      # 缩进
      shiftwidth = 2;
      tabstop = 2;
      autoindent = true;
      expandtab = true;
      # 显示
      number = true;
      relativenumber = true;
      signcolumn = "yes";
      # 搜索区分大小写
      ic = true;
    };

    keymaps = keymaps;
  };
}
