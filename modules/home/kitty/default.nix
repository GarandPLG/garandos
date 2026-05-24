{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
    shellIntegration.enableFishIntegration = true;
  };

  imports = [
    ./extra-config.nix
    ./settings.nix
  ];
}
