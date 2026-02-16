{pkgs, ...}: let
  fluxer =
    pkgs.callPackage ./fluxer-package.nix {};
in {
  environment.systemPackages = [fluxer];
}
