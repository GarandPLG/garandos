{
  pkgs,
  lib,
  config,
  ...
}: {
  options.ungoogled-chromium.enable = lib.mkEnableOption "Ungoogled Chromium";

  config.programs.chromium = lib.mkIf config.ungoogled-chromium.enable {
    enable = true;
    package = pkgs.ungoogled-chromium;
    # commandLineArgs = [ ];
    dictionaries = with pkgs; [
      hunspellDictsChromium.en_US
      # hunspellDictsChromium.pl_PL Jeśli się taka pojawi
    ];
  };

  imports = [
    ./extensions.nix
  ];
}
