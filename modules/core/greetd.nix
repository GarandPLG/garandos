{
  pkgs,
  username,
  ...
}: {
  services.greetd = {
    enable = true;
    #vt = 3;
    settings.default_session = {
      user = username;
      command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd start-hyprland"; # start Hyprland with a TUI login manager
    };
  };
}
