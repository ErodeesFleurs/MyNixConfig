{
  pkgs,
  inputs,
  ...
}:

{
  home.packages = with pkgs; [
    nil
    nixd
    rustfmt
  ];

}
