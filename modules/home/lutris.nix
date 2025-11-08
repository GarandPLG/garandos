{ pkgs, osConfig, ... }:
{
  programs.lutris = {
    enable = false;
    package = pkgs.lutris;
    protonPackages = [ pkgs.proton-ge-bin ];
    winePackages = [ pkgs.wineWowPackages.waylandFull ];
    defaultWinePackage = pkgs.wineWowPackages.waylandFull;
    steamPackage = osConfig.programs.steam.package;
  };
}
