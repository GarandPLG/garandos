{
  pkgs,
  lib,
  config,
  ...
}: {
  options.codex.enable = lib.mkEnableOption "Codex";

  config = lib.mkIf config.codex.enable {
    home.packages = with pkgs; [
      nodejs
      bubblewrap
    ];

    programs.codex = {
      enable = true;
      package = pkgs.codex;
      mutableSettings = true;
      # skills = {
      #   beads = "${pkgs.beads.src}/plugins/beads/skills/beads";
      # };
    };
  };

  imports = [
    ./plugins.nix
  ];
}
