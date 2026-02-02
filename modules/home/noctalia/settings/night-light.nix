{lib, ...}: {
  programs.noctalia-shell.settings.nightLight = lib.mkForce {
    "enabled" = false;
    "forced" = false;
    "autoSchedule" = true;
    "nightTemp" = "4177";
    "dayTemp" = "6500";
    "manualSunrise" = "06:30";
    "manualSunset" = "18:30";
  };
}
