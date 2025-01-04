{
  config,
  pkgs,
  nixvim,
  ...
}:

[
  {
    mode = "n";
    key = "<C-b>";
    action = ":NvimTreeToggle<CR>";
  }
]
