{ pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;
    extraPackages = with pkgs; [
      lua-language-server
      nil
      nixd
    ];
    extensions = [
      "lua"
      "nix"
    ];
    userSettings = {
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
