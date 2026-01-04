{
  pkgs,
  config,
  lib,
  ...
}: {
  options.tailscale.enable = lib.mkEnableOption "Tailscale";

  config.services.tailscale = lib.mkIf config.tailscale.enable {
    enable = true;
    package = pkgs.tailscale;
    openFirewall = true;
  };
}
