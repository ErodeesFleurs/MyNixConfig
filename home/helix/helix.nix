{ pkgs, ... }:

{
  # git 相关配置
  programs.helix = {
    enable = true;
    defaultEditor = true;

    extraPackages = with pkgs; [
      nil
      nixd
      nixfmt

      helix-gpt

      rust-analyzer
    ];

    settings = {
      editor = {
        line-number = "relative";
        mouse = true;
        cursorline = true;
        cursorcolumn = false;
        bufferline = "multiple";

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        statusline = {
          left = [
            "mode"
            "spinner"
          ];
          center = [
            "file-name"
          ];
          right = [
            "diagnostics"
            "selections"
            "position"
            "file-encoding"
            "file-line-ending"
            "file-type"
          ];
          separator = "|";
          mode = {
            normal = "NORMAL";
            insert = "INSERT";
            select = "SELECT";
          };
        };
        lsp = {
          enable = true;
          display-inlay-hints = true;
        };
      };
    };

    languages = {
      language-server = {
        gpt = {
          command = "helix-gpt";
          args = [
            "--handler"
            "copilot"
          ];
        };

        rust-analyzer.config.check = {
          command = "clippy";
        };
      };
      language = [
        {
          name = "nix";
          formatter = {
            command = "nixfmt";
          };
          auto-format = true;
        }
        {
          name = "rust";
          language-servers = [ "rust-analyzer" ];
          auto-format = true;
        }
      ];
    };
  };
}
