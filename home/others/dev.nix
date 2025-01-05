{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    nil
    nixd

    github-desktop
  ];

}
