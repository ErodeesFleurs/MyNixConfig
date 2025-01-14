{ ... }:

{
  # 启动蓝牙
  hardware = {
    bluetooth = {
      enable = true;
    };
  };
  services = {
    blueman = {
      enable = true;
    };
  };
}
