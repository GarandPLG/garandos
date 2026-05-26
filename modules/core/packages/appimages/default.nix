{
  pkgs,
  lib,
  config,
  ...
}: let
  mkAppImagePackage = name: pkg: {
    options.packages.appImages.${name}.enable = lib.mkEnableOption name;

    config.environment.systemPackages =
      lib.mkIf config.packages.appImages.${name}.enable [pkg];
  };

  appImagePackages = {
    fluxer = pkgs.callPackage ./fluxer.nix {};
    helium = pkgs.callPackage ./helium.nix {};
    losslesscut = pkgs.callPackage ./losslesscut.nix {};
  };
in {
  imports = builtins.attrValues (builtins.mapAttrs mkAppImagePackage appImagePackages);
}
