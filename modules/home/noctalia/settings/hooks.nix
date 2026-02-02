{lib, ...}: {
  programs.noctalia-shell.settings.hooks = lib.mkForce {
    "enabled" = false;
    "wallpaperChange" = "";
    "darkModeChange" = "";
    "screenLock" = "";
    "screenUnlock" = "";
    "performanceModeEnabled" = "";
    "performanceModeDisabled" = "";
    "startup" = "";
    "session" = "";
  };
}
