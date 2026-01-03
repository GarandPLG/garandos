{
  pkgs,
  lib,
  config,
  inputs,
  username,
  ...
}: let
in {
  options.peaclock.enable = lib.mkEnableOption "Peaclock";

  config.home.packages = lib.mkIf config.peaclock.enable [
    (inputs.wrappers.lib.wrapPackage
      {
        inherit pkgs;
        package = pkgs.peaclock;
        flags = {
          "--config-dir" = "/home/${username}/.peaclock";
          "--config" = "/home/${username}/.peaclock/config/digital";
        };
      })
  ];

  imports = [./digital.nix];
}
