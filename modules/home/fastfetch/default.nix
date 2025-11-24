{
  pkgs,
  lib,
  config,
  ...
}: {
  options.fastfetch.enable = lib.mkEnableOption "FastFetch";

  config.programs.fastfetch = lib.mkIf config.fastfetch.enable {
    enable = true;
    package = pkgs.fastfetch;
  };

  imports = [
    ./settings
  ];
}
