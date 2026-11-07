{
  inputs,
  system,
  lib,
  config,
  ...
}: {
  options.prismlauncher.enable = lib.mkEnableOption "Enable Prism Launcher";

  config.programs.prismlauncher = lib.mkIf config.prismlauncher.enable {
    enable = true;
    package = inputs.prismlauncher-cracked.packages.${system}.default;
  };
}
