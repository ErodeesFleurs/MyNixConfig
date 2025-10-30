{ pkgs, config, ... }:
let
  USER_ID = 1000;
  USER = "fleurs";
  KEY_FILE = "id_rsa";
in
{
  programs.ssh = {
    startAgent = true;
  };

  systemd.user.services.ssh-add-key = {
    wantedBy = [ "default.target" ];
    after = [ "ssh-agent.service" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStartPre = "${pkgs.coreutils-full}/bin/sleep 1";
      ExecStart = [
        "${pkgs.openssh}/bin/ssh-add ${config.users.users.${USER}.home}/.ssh/${KEY_FILE}"
      ];
      Restart = "on-failure";
      RestartSec = 1;
    };
  };

  services.openssh = {
    enable = true;
  };
}
