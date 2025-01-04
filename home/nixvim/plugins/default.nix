lib:

let
  files = [
    ./web-devicons.nix
    ./lualine.nix
    ./nvim-tree.nix
    ./bufferline.nix
  ];
  merged = builtins.foldl' (acc: file: lib.attrsets.recursiveUpdate acc (import file)) { } files;
in
merged
