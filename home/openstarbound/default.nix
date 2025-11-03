{
  pkgs,
  inputs,
  ...
}:

{
  home.packages = [
    inputs.fleurs-nur.packages.${pkgs.stdenv.hostPlatform.system}.openstarbound
  ];
}
