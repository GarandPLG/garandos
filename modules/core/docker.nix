{
  pkgs,
  lib,
  config,
  host,
  ...
}: let
  inherit (import ../../hosts/${host}/variables.nix) profile;
in {
  options.docker.enable = lib.mkEnableOption "Docker";

  config.virtualisation.docker = lib.mkIf config.docker.enable {
    enable = true;
    enableNvidia =
      if profile == "nvidia"
      then true
      else false;
    package = pkgs.docker;
    daemon.settings.dns = ["9.9.9.11" "149.112.112.11"];
  };
}
