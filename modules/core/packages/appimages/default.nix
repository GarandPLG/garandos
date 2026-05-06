{pkgs, ...}: let
  fluxer = pkgs.callPackage ./fluxer.nix {};
  helium = pkgs.callPackage ./helium.nix {};
in {
  environment.systemPackages = [fluxer helium];
}
