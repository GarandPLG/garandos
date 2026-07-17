{username, ...}: {
  programs.noctalia.settings.shell = {
    app_icon_colorize = true;
    avatar_path = "/home/${username}/garandos/modules/home/hyprland/face.jpg";
    corner_radius_scale = 2.0;
    lang = "pl";
    launch_apps_as_systemd_services = true;
    screen_time_enabled = true;
    time_format = "{:%H:%M:%S}";
    panel.open_near_click_control_center = true;
    screen_corners.enabled = true;
    screenshot.confirm_region = true;
  };
}
