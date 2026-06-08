{
  pkgs,
  username,
  lib,
  config,
  ...
}: {
  options.anki.enable = lib.mkEnableOption "Anki";

  config.programs.anki = lib.mkIf config.anki.enable {
    enable = true;
    package = pkgs.anki;
    language = "pl_PL";
    style = "native";
    profiles."${username}" = {
      default = true;
      sync = {
        username = username;
        url = "https://ass.garandplg.com/";
        autoSync = true;
      };
    };
  };
}
