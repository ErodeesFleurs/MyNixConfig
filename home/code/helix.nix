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

      ruff
      (python313.withPackages (python-pkgs: [
        python-pkgs.python-lsp-ruff
        python-pkgs.python-lsp-server
      ]))

      stylua
      lua-language-server

      clang-tools

      taplo

      zls

      vscode-json-languageserver
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
          display-messages = true;
          display-progress-messages = true;
          auto-signature-help = true;
          display-inlay-hints = true;
          display-color-swatches = true;
          display-signature-help-docs = true;
          snippets = true;
          goto-reference-include-declaration = true;
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
          name = "c";
          language-servers = [ "clangd" ];
          auto-format = true;
        }
        {
          name = "cpp";
          language-servers = [ "clangd" ];
          auto-format = true;
        }
        {
          name = "nix";
          formatter = {
            command = "nixfmt";
          };
          auto-format = true;
        }
        {
          name = "rust";
          language-servers = [
            "rust-analyzer"
            "gpt"
          ];
          auto-format = true;
        }
        {
          name = "python";
          language-servers = [
            "pylsp"
            "gpt"
          ];
          formatter = {
            command = "sh";
            args = [
              "-c"
              "ruff check --select I --fix - | ruff format --line-length 88 -"
            ];
          };
          auto-format = true;
        }
        {
          name = "lua";
          language-servers = [
            "lua-language-server"
            "gpt"
          ];
          formatter = {
            command = "stylua";
            args = [ "-" ];
          };
          auto-format = true;
        }
        {
          name = "toml";
          language-servers = [
            "taplo"
          ];
          auto-format = true;
        }
        {
          name = "zig";
          language-servers = [
            "zls"
          ];
          auto-format = true;
        }
        {
          name = "json";
          language-servers = [
            "vscode-json-language-server"
          ];
          auto-format = true;
        }
      ];
    };
  };
}
