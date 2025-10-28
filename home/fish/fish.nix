{ ... }:

{
  programs.fish = {
    enable = true;
    plugins = with pkgs.fishPlugins; [
      pure
    ];
  };
}
