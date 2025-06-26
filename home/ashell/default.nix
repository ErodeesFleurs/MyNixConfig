{ pkgs, ... }:

{
  home.packages = with pkgs;[
    ashell
  ];

  home.file.".config/ashell" = {
    source = ./ashell;
    recursive = true;
    executable = true;
  };
}
