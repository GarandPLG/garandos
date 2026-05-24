{
  pkgs,
  shell,
  ...
}: {
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
    shellIntegration.enableFishIntegration =
      if shell == "fish"
      then true
      else false;
  };

  imports = [
    ./extra-config.nix
    ./settings.nix
  ];
}
