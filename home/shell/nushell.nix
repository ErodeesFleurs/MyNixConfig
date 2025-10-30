{ ... }:

{
  programs.nushell = {
    enable = true;
    settings = {
      show_banner = false;
    };
    extraConfig = ''
      clear; fastfetch
    '';
  };
}
