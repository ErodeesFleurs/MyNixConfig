{ pkgs, ... }:
{
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
}
