{username, ...}: {
  programs.noctalia.settings.widget = {
    battery.display_mode = "graphic";

    bluetooth.hide_when_no_connected_device = true;

    clock.format = "{:%H:%M:%S}";

    control-center = {
      custom_image = "/home/${username}/garandos/GarandOS.svg";
      scale = 1.3;
    };

    cpu.visualization = "gauge";

    launcher.glyph = "rocket";

    media.title_scroll = "on_hover";

    network.show_label = false;

    network_rx = {
      visualization = "gauge";
      network_speed_compact = true;
    };

    network_tx = {
      visualization = "gauge";
      network_speed_compact = true;
    };

    ram.visualization = "gauge";

    recorder.type = "noctalia/screen_recorder:recorder";

    keybinds.type = "kenn/keybind-cheatsheet:keybinds";

    spacer_2.type = "spacer";

    spacer_3.type = "spacer";

    sysmon = {
      visualization = "gauge";
      path = "/home";
      stat = "disk_free_pct";
    };

    tray.hidden = ["nm-applet" "Easy Effects"];

    workspaces.scale = 1.1;
  };
}
