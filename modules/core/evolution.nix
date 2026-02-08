{
  lib,
  config,
  ...
}: {
  options.evolution.enable = lib.mkEnableOption "Enable Evolution";

  config = {
    programs.evolution.enable = lib.mkIf config.evolution.enable true;
    services.gnome.evolution-data-server.enable = lib.mkIf config.evolution.enable true;
  };
}
