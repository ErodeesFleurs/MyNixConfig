# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./modules
  ];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    package = pkgs.kdePackages.sddm;
    autoNumlock = true;
    theme = "catppuccin-latte-sky";
  };
  environment.systemPackages = [
    (pkgs.catppuccin-sddm.override {
      flavor = "latte";
      accent = "sky";
      font = "CaskaydiaMonoNerdFont";
      fontSize = "9";
      background = "${./media/wallpapers/1.jpg}";
      loginBackground = true;
    })
  ];

  #   services.desktopManager.plasma6.enable = true;
  #   services.displayManager.autoLogin.enable = false;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services.gvfs.enable = true;

  # Enable logitech
  hardware.logitech = {
    wireless = {
      enable = true;
      enableGraphical = true;
    };
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    users.fleurs = {
      isNormalUser = true;
      description = "ErodeesFleurs";
      extraGroups = [
        "networkmanager"
        "wheel"
        "docker"
        "libvirt"
        "kvm"
      ];
      shell = pkgs.nushell;
      packages = with pkgs; [ ];
    };
  };

  security.polkit.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}
