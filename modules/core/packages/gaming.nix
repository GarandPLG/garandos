{
  pkgs,
  inputs,
  system,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    # Gaming platforms
    lutris
    wineWowPackages.waylandFull
    inputs.prismlauncher-cracked.packages.${system}.default
    # Games
    space-cadet-pinball
    tty-solitaire
  ];
}
