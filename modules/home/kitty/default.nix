{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
  };

  imports = [
    ./extra-config.nix
    ./settings.nix
  ];
}
