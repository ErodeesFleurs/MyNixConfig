{
  config,
  pkgs,
  nixvim,
  ...
}:

let
  keymap = [
    {
      mode = "n";
      key = "<C-b>";
      action = ":NvimTreeToggle<CR>";
    }
  ];
in
{
  imports = [
    nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
    keymaps = keymap;
  };
}
