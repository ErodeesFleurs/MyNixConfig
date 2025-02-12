{ ... }:

{
  # Nix系统设置.
  nix = {
    settings = {
      experimental-features = [
        "flakes"
        "nix-command"
      ];
    };
    optimise = {
      automatic = true;
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  system = {
    stateVersion = "25.11";
  };
}
