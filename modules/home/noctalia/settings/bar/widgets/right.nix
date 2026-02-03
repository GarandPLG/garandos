{username, ...}: {
  right = [
    {
      id = "Tray";
      blacklist = [
        "nm-applet"
      ];
      colorizeIcons = false;
      drawerEnabled = false;
      hidePassive = false;
      pinned = [];
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
      id = "Bluetooth";
      displayMode = "onhover";
    }
    {
      id = "Battery";
      deviceNativePath = "__default__";
      displayMode = "onhover";
      hideIfIdle = false;
      hideIfNotDetected = true;
      showNoctaliaPerformance = false;
      showPowerProfiles = false;
      warningThreshold = 30;
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
