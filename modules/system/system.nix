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
      substituters = [
        "https://cache.nixos.org"
      ];
      trusted-public-keys = [ ];
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
    nixos-init.enable = true;
    etc.overlay = {
      enable = true;
      mutable = true;
    };
  };
}
