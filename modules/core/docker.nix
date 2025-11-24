{
  pkgs,
  lib,
  config,
  ...
}: {
  options.docker.enable = lib.mkEnableOption "Docker";

  config.virtualisation.docker = lib.mkIf config.docker.enable {
    enable = true;
    package = pkgs.docker;
    daemon.settings.dns = ["9.9.9.11" "149.112.112.11"];
  };
}
