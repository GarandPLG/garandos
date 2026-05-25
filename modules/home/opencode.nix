{
  pkgs,
  lib,
  config,
  ...
}: {
  options.opencode.enable = lib.mkEnableOption "Opencode";

  config.programs.opencode = lib.mkIf config.opencode.enable {
    enable = true;
    package = pkgs.opencode;
  };
}
