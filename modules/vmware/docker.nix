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
          registry-mirrors = [
            "https://registry.docker-cn.com"
            "https://docker.mirrors.ustc.edu.cn"
            "https://hub-mirror.c.163.com"
            "https://mirror.baidubce.com"
            "https://ccr.ccs.tencentyun.com"
          ];
        };
      };
    };
  };
}
