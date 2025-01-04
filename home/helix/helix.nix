{ ... }:

{
  # git 相关配置
  programs.helix = {
    enable = true;
    settings = {
    theme = "tokyonight";
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
      };
    };
  };
}
