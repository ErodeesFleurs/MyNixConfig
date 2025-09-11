{ ... }:

{
  # Nix系统设置.
  nix = {
    settings = {
      experimental-features = [
        "flakes"
        "nix-command"
      ];
      trusted-users = [
        "fleurs"
      ];
    };
    optimise = {
      automatic = true;
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      permittedInsecurePackages = [
        "qtwebengine-5.15.19"
      ];
    };
  };

  system = {
    stateVersion = "25.11";
  };
}
