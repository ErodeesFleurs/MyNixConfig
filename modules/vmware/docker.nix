{ ... }:

{
  virtualisation = {
    docker = {
      enable = true;
      daemon = {
        settings = {
          dns = [
            "8.8.8.8"
            "114.114.114.114"
          ];
        };
      };
    };
  };
}
