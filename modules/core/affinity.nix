{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  options.affinity.enable = lib.mkEnableOption "Affinity";

  config = lib.mkIf config.affinity.enable {
    nixpkgs.overlays = [inputs.affinity-nix.overlays.default];
    environment.systemPackages = with pkgs; [affinity-v3];
  };
}
