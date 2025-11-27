{
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];

  # Enable CUPS to print documents.
  services.printing.enable = true;

  services.gvfs.enable = true;

  security.polkit.enable = true;
}
