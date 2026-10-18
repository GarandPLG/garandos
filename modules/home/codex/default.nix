{
  pkgs,
  lib,
  config,
  ...
}: {
  options.codex.enable = lib.mkEnableOption "Codex";

  config.programs.codex = lib.mkIf config.codex.enable {
    enable = true;
    package = pkgs.codex;
    mutableSettings = true;
  };

  imports = [
    ./plugins.nix
  ];
}
