{ pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;
    extraPackages = with pkgs; [
      lua-language-server
      nil
      nixd

      basedpyright
      ruff
    ];
    extensions = [
      "lua"
      "nix"
      "toml"
      "git-firefly"
      "opencode"
    ];
    userSettings = {
      auto_signature_help = true;
      auto_update = false;
      diagnostics = {
        inline = {
          enabled = true;
        };
      };
      inlay_hints = {
        enabled = true;
      };
      agent = {
        always_allow_tool_actions = true;
        model_parameters = [ ];
      };
      features = {
        edit_prediction_provider = "copilot";
      };
    };
  };
}
