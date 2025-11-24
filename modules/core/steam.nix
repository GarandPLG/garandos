{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    steam.enable = lib.mkEnableOption "Steam";
    gamescope.enable = lib.mkEnableOption "Gamescope";
    gamemode.enable = lib.mkEnableOption "Gamemode";
  };

  config.programs = {
    steam = lib.mkIf config.steam.enable {
      enable = true;
      package = pkgs.steam;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      gamescopeSession = lib.mkIf config.gamescope.enable {
        enable = true;
        args = [
          "--rt"
          "--expose-wayland"
        ];
      };
      extraCompatPackages = [pkgs.proton-ge-bin];
    };

    gamescope = lib.mkIf config.gamescope.enable {
      enable = true;
      capSysNice = true;
      args = [
        "--rt"
        "--expose-wayland"
      ];
    };

    gamemode = lib.mkIf config.gamemode.enable {
      enable = true;
      enableRenice = true;
    };
  };
}
