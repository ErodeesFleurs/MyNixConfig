{
  pkgs,
  inputs,
  ...
}:

{
  home.packages = with pkgs; [
    inputs.winboat.packages.${pkgs.system}.winboat
    pkgs.freerdp
  ];
}
