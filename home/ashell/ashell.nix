{ ... }:

{
  programs.ashell = {
    enable = true;
    settings = {
      outputs = "All";
      position = "Top";
      app_launcher_cmd = "~/.config/rofi/launcher.sh";
      clipboard_cmd = "cliphist-rofi-img | wl-copy";
      truncate_title_after_length = 150;

      modules = {
        left = [
          "Workspaces"
        ];
        center = [ "WindowTitle" ];
        right = [
          "Tray"
          "SystemInfo"
          [
            "Clock"
            "Privacy"
            "Settings"
          ]
          "CustomNotifications"
        ];
      };

      system = {
        indicators = [
          "Cpu"
          "Memory"
          "Temperature"
        ];
        cpu = {
          warn_threshold = 70;
          alert_threshold = 85;
        };
        memory = {
          warn_threshold = 70;
          alert_threshold = 85;
        };
        temperature = {
          warn_threshold = 70;
          alert_threshold = 85;
        };
        disk = {
          warn_threshold = 80;
          alert_threshold = 90;
        };
      };

      clock = {
        format = "%a %d %b %R";
      };

      settings = {
        lock_cmd = "hyprlock &";
      };

      appearance = {
        font_name = "CaskaydiaMonoNerdFont";
        style = "Islands";
        opacity = 0.6;
        menu = {
          opacity = 0.7;
          backdrop = 0.5;
        };
      };
    };
  };
}
