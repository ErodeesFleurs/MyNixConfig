{ ... }:

{
  programs.ashell = {
    enable = true;
    settings = {
      outputs = "All";
      position = "Top";
      truncate_title_after_length = 150;

      modules = {
        left = [
          "appLauncher"
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
          # "CustomNotifications"
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
        wifi_more_cmd = "nm-connection-editor";
        vpn_more_cmd = "nm-connection-editor";
      };

      appearance = {
        font_name = "CaskaydiaMonoNerdFont";
        style = "Islands";
        menu = {
          backdrop = 0.5;
        };
      };

      CustomModule = [
        {
          name = "appLauncher";
          icon = "󱗼";
          command = "vicinae toggle";
        }
      ];
    };
  };
}
