{lib, ...}: {
  programs.noctalia-shell.settings.audio = lib.mkForce {
    "volumeStep" = 5;
    "volumeOverdrive" = true;
    "cavaFrameRate" = 144;
    "visualizerType" = "linear";
    "mprisBlacklist" = [];
    "preferredPlayer" = "mpv";
    "volumeFeedback" = false;
  };
}
