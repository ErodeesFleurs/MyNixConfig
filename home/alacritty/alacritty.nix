{ ... }:

{
  # alacritty - 一个跨平台终端，带 GPU 加速功能
  programs.alacritty = {
    enable = true;
    # 自定义配置
    settings = {
      env.TERM = "xterm-256color";

      font = {
        # normal = {
        #   family = "CaskaydiaMonoNerdFont";
        #   style = "Regular";
        # };

        bold = {
          family = "CaskaydiaMonoNerdFont";
          style = "Bold";
        };

        italic = {
          family = "CaskaydiaMonoNerdFont";
          style = "Italic";
        };
        size = 12;
      };

      colors = {
        indexed_colors = [
          {
            color = "#FAB387";
            index = 16;
          }
          {
            color = "#F5E0DC";
            index = 17;
          }
        ];

        # bright = {
        #   black = "#585B70";
        #   blue = "#89B4FA";
        #   cyan = "#94E2D5";
        #   green = "#A6E3A1";
        #   magenta = "#F5C2E7";
        #   red = "#F38BA8";
        #   white = "#A6ADC8";
        #   yellow = "#F9E2AF";
        # };

        # cursor = {
        #   cursor = "#F5E0DC";
        #   text = "#1E1E2E";
        # };

        dim = {
          black = "#45475A";
          blue = "#89B4FA";
          cyan = "#94E2D5";
          green = "#A6E3A1";
          magenta = "#F5C2E7";
          red = "#F38BA8";
          white = "#BAC2DE";
          yellow = "#F9E2AF";
        };

        hints = {
          start = {
            background = "#F9E2AF";
            foreground = "#1E1E2E";
          };

          end = {
            background = "#A6ADC8";
            foreground = "#1E1E2E";
          };
        };

        # normal = {
        #   black = "#45475A";
        #   blue = "#89B4FA";
        #   cyan = "#94E2D5";
        #   green = "#A6E3A1";
        #   magenta = "#F5C2E7";
        #   red = "#F38BA8";
        #   white = "#BAC2DE";
        #   yellow = "#F9E2AF";
        # };

        # primary = {
        #   background = "#1E1E2E";
        #   bright_foreground = "#CDD6F4";
        #   dim_foreground = "#CDD6F4";
        #   foreground = "#CDD6F4";
        # };

        search = {
          focused_match = {
            background = "#A6E3A1";
            foreground = "#1E1E2E";
          };

          matches = {
            background = "#A6ADC8";
            foreground = "#1E1E2E";
          };

        };
        # selection = {
        #   background = "#F5E0DC";
        #   text = "#1E1E2E";
        # };

        vi_mode_cursor = {
          cursor = "#B4BEFE";
          text = "#1E1E2E";
        };
      };

      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
      # window.opacity = 0.8;
    };
  };
}
