_: {
  programs.noctalia.settings.bar = {
    enabled = false;
    order = ["main"];
    "main" = {
      enabled = true;
      background_opacity = 0.0;
      widget_spacing = 10;
      margin_ends = 0;
      scale = 0.95;
      font_family = "FiraCode Nerd Font";

      start = [
        "launcher"
        "spacer_2"
        "clock"
        "spacer_3"
        "cpu"
        "ram"
        "network_rx"
        "network_tx"
        "sysmon"
      ];
      center = ["workspaces"];
      end = [
        "tray"
        "keybinds"
        "notifications"
        "bluetooth"
        "battery"
        "recorder"
        "volume"
        "network"
        "control-center"
      ];
    };
  };
}
