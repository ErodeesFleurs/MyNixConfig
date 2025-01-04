{
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        close_command = "bdelete! %d";
        offsets = [
          {
            filetype = "NvimTree";
            text = "File Explorer";
            text_align = "left";
            separator = true;
          }
        ];
      };
    };
  };
}
