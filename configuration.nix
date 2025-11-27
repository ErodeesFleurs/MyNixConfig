{
  pkgs,
  ...
}:

{
  imports = [
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

  security.polkit.enable = true;
}
