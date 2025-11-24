{
  pkgs,
  lib,
  config,
  ...
}: {
  options.obs-studio.enable = lib.mkEnableOption "OBS Studio";

  config.programs.obs-studio = lib.mkIf config.obs-studio.enable {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-pipewire-audio-capture
      obs-vkcapture
      obs-source-clone
      obs-move-transition
      obs-composite-blur
      obs-backgroundremoval
    ];
  };
}
