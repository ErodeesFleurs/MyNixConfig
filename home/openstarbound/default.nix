{
  pkgs,
  inputs,
  hyprland-qtutils,
  fleurs-nur,
  ...
}:

let
  osb = pkgs.callPackage ./osb { };
  osb-fhs = (
    let
      base = pkgs.appimageTools.defaultFhsEnvArgs;
    in
    pkgs.buildFHSUserEnv (
      base
      // {
        name = "osb-fhs";
        targetPkgs =
          pkgs:
          (base.targetPkgs pkgs)
          ++ (with pkgs; [
            pkg-config
            ncurses
          ]);
        profile = "export FHS=1";
        runScript = "fish";
        extraOutputsToInstall = [ "dev" ];
      }
    )
  );
in
{
  home.packages = with pkgs; [
    # osb
    osb-fhs
  ];
}
