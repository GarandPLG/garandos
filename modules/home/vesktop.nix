{
  pkgs,
  lib,
  config,
  ...
}: {
  options.vesktop.enable = lib.mkEnableOption "Vesktop";

  config.programs.vesktop = lib.mkIf config.vesktop.enable {
    enable = true;
    package = pkgs.vesktop;
  };
}
