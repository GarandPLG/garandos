{username, ...}: {
  right = [
    {
      id = "Tray";
      blacklist = [
        "nm-applet"
        "Easy Effects"
      ];
      colorizeIcons = false;
      drawerEnabled = false;
      hidePassive = false;
      pinned = [];
    }
    {
      id = "plugin:tailscale";
    }
    {
      id = "plugin:keybind-cheatsheet";
    }
    {
      id = "plugin:timer";
      defaultSettings = {
        compactMode = true;
        defaultDuration = 0;
      };
    }
    {
      id = "NotificationHistory";
      hideWhenZero = false;
      hideWhenZeroUnread = false;
      showUnreadBadge = true;
      unreadBadgeColor = "primary";
    }
    {
      id = "plugin:kde-connect";
    }
    {
      id = "Bluetooth";
      displayMode = "onhover";
    }
    {
      id = "Battery";
      deviceNativePath = "__default__";
      displayMode = "graphic";
      hideIfIdle = false;
      hideIfNotDetected = true;
      showNoctaliaPerformance = true;
      showPowerProfiles = true;
      warningThreshold = 30;
    }
    {
      id = "plugin:screen-recorder";
      defaultSettings = {
        hideInactive = true;
        iconColor = "none";
        directory = "";
        filenamePattern = "recording_yyyyMMdd_HHmmss";
        frameRate = 60;
        audioCodec = "aac";
        videoCodec = "hevc";
        quality = "ultra";
        colorRange = "full";
        showCursor = true;
        copyToClipboard = false;
        audioSource = "both";
        videoSource = "portal";
        resolution = "1920x1080";
        replayEnabled = true;
        replayDuration = 60;
        customReplayDuration = 30;
        replayStorage = "disk";
        restorePortalSession = true;
        customFrameRate = 6;
      };
    }
    {
      id = "Volume";
      displayMode = "alwaysShow";
      middleClickCommand = "pwvucontrol || pavucontrol";
    }
    {
      id = "Network";
      displayMode = "onhover";
    }
    {
      id = "ControlCenter";
      colorizeDistroLogo = false;
      colorizeSystemIcon = "none";
      customIconPath = "/home/${username}/garandos/GarandOS.svg";
      enableColorization = false;
      icon = "noctalia";
      useDistroLogo = false;
    }
  ];
}
