{
  pkgs,
  lib,
  config,
  ...
}: {
  options.vscodium.enable = lib.mkEnableOption "VsCodium";

  config = {
    nixpkgs.config.allowUnfree = true;

    programs.vscode = lib.mkIf config.vscodium.enable {
      enable = true;
      package = pkgs.vscodium;
    };
  };

  imports = [
    ./profiles
  ];
}
