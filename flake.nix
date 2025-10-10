{
  description = "Fleurs's NixOS configuration";

  nixConfig = {
    extra-substituters = [
      "https://cache.nixos.org"
      "https://nix-community.cachix.org"
      "https://hyprland.cachix.org"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
    ];
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-alien = {
      url = "github:thiagokokada/nix-alien";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    winboat = {
      url = "github:TibixDev/winboat";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fleurs-nur = {
      url = "github:ErodeesFleurs/FleursNUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      nixpkgs,
      home-manager,
      nixvim,
      hyprland,
      nix-alien,
      stylix,
      winboat,
      fleurs-nur,
      ...
    }:
    {
      nixosConfigurations = {
        spectre = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            home-manager.nixosModules.home-manager
            stylix.nixosModules.stylix
            hyprland.nixosModules.default
            {
              home-manager.useGlobalPkgs = false;
              home-manager.useUserPackages = true;

              home-manager.users.fleurs = import ./home.nix;
              home-manager.extraSpecialArgs = inputs;

              home-manager.backupFileExtension = "hm-backup";
            }
            ./configuration.nix
          ];
          specialArgs = {
            inherit inputs;
          };
        };
      };
    };
}
