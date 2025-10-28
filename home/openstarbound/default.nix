{
  pkgs,
  inputs,
  ...
}:

{
  home.packages = with pkgs; [
    inputs.fleurs-nur.packages.${pkgs.system}.openstarbound
  ];
}
