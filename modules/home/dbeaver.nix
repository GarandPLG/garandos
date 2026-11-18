{
  pkgs,
  lib,
  config,
  ...
}: {
  options.dbeaver.enable = lib.mkEnableOption "dbeaver";

  config.programs.dbeaver = lib.mkIf config.dbeaver.enable {
    enable = true;
    package = pkgs.dbeaver-bin;
  };
}
