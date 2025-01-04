{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    nil
    nixd
    rustfmt

    github-desktop
  ];

}
