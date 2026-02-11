{
  pkgs,
  lib,
  config,
  ...
}: {
  options.calendar.enable = lib.mkEnableOption "Enable GNOME Calendar";

  config = {
    services.gnome.evolution-data-server.enable = lib.mkIf config.calendar.enable true;
    environment.systemPackages = lib.mkIf config.calendar.enable (with pkgs; [
      gnome-calendar
      gnome-contacts
    ]);
  };
}
