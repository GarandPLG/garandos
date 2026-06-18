{
  lib,
  config,
  ...
}: {
  options.obsidian.vaults."BoM".enable = lib.mkEnableOption "Obsidian BoM vault";

  config.programs.obsidian.vaults."BoM" = lib.mkIf config.obsidian.vaults."BoM".enable {
    enable = true;
    target = "Obsidian/BoM";
  };
}
