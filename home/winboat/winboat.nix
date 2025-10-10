{
  pkgs,
  system,
  winboat,
  ...
}:

{
  home.packages = with pkgs; [
    winboat.packages.${system}.winboat
    pkgs.freerdp
  ];
}
