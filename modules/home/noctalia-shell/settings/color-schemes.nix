{lib, ...}: {
  programs.noctalia-shell.settings.colorSchemes = lib.mkForce {
    useWallpaperColors = false;
    predefinedScheme = "Noctalia (default)";
    darkMode = true;
    schedulingMode = "off";
    manualSunrise = "06:30";
    manualSunset = "18:30";
    generationMethod = "tonal-spot";
    monitorForColors = "";
  };
}
