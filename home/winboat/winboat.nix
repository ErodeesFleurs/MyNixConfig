{
  pkgs,
  winboat,
  ...
}:

{
  home.packages = with pkgs; [
    winboat.packages.${pkgs.system}.winboat
    pkgs.freerdp
  ];
}
