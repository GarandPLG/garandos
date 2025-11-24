{
  pkgs,
  lib,
  config,
  ...
}: {
  options.nextcloud-client.enable = lib.mkEnableOption "Nextcloud Client";

  config.services.nextcloud-client = lib.mkIf config.nextcloud-client.enable {
    enable = true;
    startInBackground = true;
    package = pkgs.nextcloud-client;
  };
}
