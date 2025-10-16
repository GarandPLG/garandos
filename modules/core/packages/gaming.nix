{
  pkgs,
  inputs,
  system,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    inputs.prismlauncher-cracked.packages.${system}.default
    space-cadet-pinball
    tty-solitaire
  ];
}
