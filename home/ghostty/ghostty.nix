{ ... }:

{
  programs.ghostty = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      font-feature = "+liga,+calt,+dlig";
      background = "#ebdbb2";
    };
  };
}
