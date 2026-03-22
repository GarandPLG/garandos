{
  pkgs,
  lib,
  config,
  ...
}: {
  options.kdeconnect.enable = lib.mkEnableOption "KDE Connect";

  config = {
    services.kdeconnect = lib.mkIf config.kdeconnect.enable {
      enable = true;
      indicator = false;
      package = pkgs.kdePackages.kdeconnect-kde;
    };
  };
}
