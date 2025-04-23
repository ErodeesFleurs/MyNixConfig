{
  pkgs,
  winapps,
  ...
}:

{
  home.packages = with pkgs; [
    winapps.packages."${pkgs.system}".winapps
    winapps.packages."${pkgs.system}".winapps-launcher
  ];
}