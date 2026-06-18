{
  pkgs,
  lib,
  config,
  ...
}: {
  options.obsidian.enable = lib.mkEnableOption "Obsidian";

  config.programs.obsidian = lib.mkIf config.obsidian.enable {
    enable = true;
    package = pkgs.obsidian;
    cli.enable = true;
  };

  imports = [
    # ./default-settings
    ./vaults
  ];
}
