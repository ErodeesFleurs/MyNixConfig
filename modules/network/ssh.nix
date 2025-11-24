{ ... }:
{
  programs.ssh = {
    startAgent = true;
    knownHosts = {
      "github.com".publicKey =
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIICXZT5BZTeDTgIk2oEOiZwjtrSLwlnD6tCla410rGut 862959461@qq.com";
    };
  };

  services.openssh = {
    enable = true;
  };
}
