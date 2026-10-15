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
    # skills = {
    #   ponytail = /home/${username}/.agents/skills/ponytail;
    #   caveman = /home/${username}/.agents/skills/caveman;
    # };
  };
}
