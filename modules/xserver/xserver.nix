{ ... }:

{
  services = {
    xserver = {
      enable = true;
      videoDrivers = [ "nvidia" ];
      xkb = {
        layout = "cn";
        variant = "";
      };
    };
    libinput = {
      enable = true;
    };
  };
}
