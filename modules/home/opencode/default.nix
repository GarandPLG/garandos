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
    validateFiles = {
      config = false;
      cli = false;
    };
    mutableSettings = true;
    cli = {};
  };

  imports = [
    ./settings
    ./skills
    ./extra-packages.nix
  ];
}
