{ inputs, pkgs, ... }:

{
  environment.systemPackages = [
    inputs.winapps.packages."${pkgs.stdenv.system}".winapps
  ];
}
