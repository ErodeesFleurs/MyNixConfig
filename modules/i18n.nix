{ config, pkgs, ... }:

{
  # 设置 locale 默认值为 zh
  i18n.defaultLocale = "zh_CN.UTF-8";
  # 输入法引擎使用 ibus，输入法使用 rime
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-gtk
        fcitx5-chinese-addons
        fcitx5-material-color
        fcitx5-pinyin-moegirl
        fcitx5-pinyin-zhwiki
      ];
    };
  };
}
