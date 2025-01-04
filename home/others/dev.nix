{
  pkgs,
  inputs,
  ...
}:

{
  home.packages = with pkgs; [
    nixd
    rustfmt
  ];

}
