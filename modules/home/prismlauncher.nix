{
  pkgs,
  inputs,
  system,
  lib,
  config,
  ...
}: let
  prismlauncher-cracked-fixed = inputs.prismlauncher-cracked.packages.${system}.default.override {
    prismlauncher-unwrapped =
      (inputs.prismlauncher-cracked.packages.${system}.prismlauncher-unwrapped.override {
        extra-cmake-modules = pkgs.kdePackages.extra-cmake-modules;
      }).overrideAttrs (oldAttrs: {
        nativeBuildInputs =
          (oldAttrs.nativeBuildInputs or [])
          ++ [
            pkgs.pkg-config
          ];
      });
  };
in {
  options.prismlauncher.enable = lib.mkEnableOption "Enable Prism Launcher";

  config.programs.prismlauncher = lib.mkIf config.prismlauncher.enable {
    enable = true;
    package = prismlauncher-cracked-fixed;
  };
}
