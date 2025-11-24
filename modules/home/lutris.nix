{
  pkgs,
  lib,
  config,
  ...
}: {
  options.lutris.enable = lib.mkEnableOption "Lutris";

  config.programs.lutris = lib.mkIf config.lutris.enable {
    enable = true;
    package = pkgs.lutris;
    protonPackages = [pkgs.proton-ge-bin];
    winePackages = [pkgs.wineWowPackages.waylandFull];
    defaultWinePackage = pkgs.wineWowPackages.waylandFull;
    steamPackage = pkgs.steam;
  };
}
