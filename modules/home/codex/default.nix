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
    # skills = {
    #   beads = "${pkgs.beads.src}/plugins/beads/skills/beads";
    # };
  };

  imports = [
    ./plugins.nix
  ];
}
