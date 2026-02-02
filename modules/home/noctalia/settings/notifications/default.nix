{
  lib,
  username,
  ...
}: {
  programs.noctalia-shell.settings.notifications = lib.mkForce {
    enabled = true;
    monitors = [];
    location = "top_right";
    overlayLayer = true;
    backgroundOpacity = 0;
    respectExpireTimeout = false;
    lowUrgencyDuration = 3;
    normalUrgencyDuration = 8;
    criticalUrgencyDuration = 15;
    enableKeyboardLayoutToast = false;
    saveToHistory = {
      low = true;
      normal = true;
      critical = true;
    };
    sounds = {
      enabled = true;
      volume = 0.5;
      separateSounds = false;
      criticalSoundFile = "/home/${username}/garandos/modules/home/noctalia/settings/notifications/payday-2-new-objective-sound-effect.mp3";
      normalSoundFile = "/home/${username}/garandos/modules/home/noctalia/settings/notifications/payday-2-new-objective-sound-effect.mp3";
      lowSoundFile = "/home/${username}/garandos/modules/home/noctalia/settings/notifications/payday-2-new-objective-sound-effect.mp3";
      excludedApps = "discord,firefox,chrome,chromium,edge";
    };
    enableMediaToast = false;
  };
}
