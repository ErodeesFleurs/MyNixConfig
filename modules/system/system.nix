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
      ];
    };
  };

  system = {
    stateVersion = "25.11";
  };
}
