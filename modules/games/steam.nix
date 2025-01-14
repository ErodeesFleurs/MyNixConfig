{ ... }:

{
  programs = {
    steam = {
      enable = true;
      remotePla = {
        openFirewall = true;
      }; # 开放远程游戏同享端口

      dedicatedServer = {
        openFirewall = true;
      }; # 开放主机服务器端口

      extest = {
        enable = true;
      }; # 启动steam外部测试，用于导入x11输入

      gamescopeSession = {
        enable = true;
      }; # 启动gamescope桌面会话

      protontricks = {
        enable = true;
      };
    };
  };
}
