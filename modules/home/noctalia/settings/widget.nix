{username, ...}: {
  programs.noctalia.settings.widget = {
    battery.display_mode = "graphic";

    bluetooth.hide_when_no_connected_device = true;

    clock.format = "{:%H:%M:%S}";

    control-center = {
      custom_image = "/home/${username}/garandos/GarandOS.svg";
      scale = 1.3;
    };

    cpu.display = "text";

    launcher.glyph = "rocket";

    media.title_scroll = "on_hover";

    network.show_label = false;

    network_rx = {
      display = "text";
      network_speed_compact = true;
    };

    network_tx = {
      display = "text";
      network_speed_compact = true;
    };

    ram.display = "text";

    recorder.type = "noctalia/screen_recorder:recorder";

    spacer_2.type = "spacer";

    spacer_3.type = "spacer";

    sysmon = {
      display = "text";
      path = "/home";
      stat = "disk_pct";
    };

    tray.hidden = ["nm-applet" "Easy Effects"];

    workspaces.scale = 1.1;
  };
}
