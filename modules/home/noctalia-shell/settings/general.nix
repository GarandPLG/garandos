{
  lib,
  keyboardLayout,
  username,
  ...
}: {
  programs.noctalia-shell.settings.general = lib.mkForce {
    avatarImage = "/home/${username}/.face.icon";
    dimmerOpacity = 0.2;
    showScreenCorners = false;
    forceBlackScreenCorners = false;
    scaleRatio = 1;
    radiusRatio = 2;
    iRadiusRatio = 2;
    boxRadiusRatio = 1;
    screenRadiusRatio = 1;
    animationSpeed = 1;
    animationDisabled = false;
    compactLockScreen = false;
    lockOnSuspend = true;
    showSessionButtonsOnLockScreen = true;
    showHibernateOnLockScreen = false;
    enableShadows = true;
    shadowDirection = "bottom_right";
    shadowOffsetX = 2;
    shadowOffsetY = 3;
    language = "${keyboardLayout}";
    allowPanelsOnScreenWithoutBar = true;
    showChangelogOnStartup = true;
    telemetryEnabled = false;
    enableLockScreenCountdown = true;
    lockScreenCountdownDuration = 10000;
    autoStartAuth = false;
    allowPasswordWithFprintd = false;
  };
}
