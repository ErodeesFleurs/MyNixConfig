{ ... }:

{
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "cn";
        variant = "";
      };
      libinput = {
        enable = true;
      };
    };
  };
}
