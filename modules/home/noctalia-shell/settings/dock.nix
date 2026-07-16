{lib, ...}: {
  programs.noctalia-shell.settings.dock = lib.mkForce {
    enabled = false;
    position = "bottom";
    displayMode = "auto_hide";
    backgroundOpacity = 0;
    floatingRatio = 1;
    size = 1.5;
    onlySameOutput = false;
    monitors = [];
    pinnedApps = [];
    colorizeIcons = false;
    pinnedStatic = false;
    inactiveIndicators = false;
    deadOpacity = 0.5;
    animationSpeed = 1;
  };
}
