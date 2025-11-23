{pkgs, ...}: {
  services.swaync = {
    enable = true;
    package = pkgs.swaynotificationcenter;
  };

  imports = [
    ./settings.nix
    ./style.nix
  ];
}
