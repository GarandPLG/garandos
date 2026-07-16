{
  lib,
  config,
  username,
  ...
}: {
  programs.noctalia-shell.settings.wallpaper = lib.mkForce {
    enabled = true;
    overviewEnabled = false;
    directory = "/home/${username}/Pictures/Wallpapers";
    monitorDirectories = [];
    enableMultiMonitorDirectories = false;
    showHiddenFiles = false;
    viewMode = "single";
    setWallpaperOnAllMonitors = true;
    fillMode = "crop";
    fillColor = "#000000";
    useSolidColor = false;
    solidColor = "#1a1a2e";
    automationEnabled = false;
    wallpaperChangeMode = "random";
    randomIntervalSec = 300;
    transitionDuration = 1500;
    transitionType = "random";
    transitionEdgeSmoothness = 0.05;
    panelPosition = "follow_bar";
    hideWallpaperFilenames = false;
    useWallhaven = false;
    wallhavenQuery = "";
    wallhavenSorting = "relevance";
    wallhavenOrder = "desc";
    wallhavenCategories = "111";
    wallhavenPurity = "100";
    wallhavenRatios = "";
    wallhavenApiKey = "";
    wallhavenResolutionMode = "atleast";
    wallhavenResolutionWidth = "";
    wallhavenResolutionHeight = "";
    sortOrder = "name";
  };

  home.file.".cache/noctalia/wallpapers.json".text = lib.mkForce (builtins.toJSON {
    defaultWallpaper = config.stylix.image;
  });
}
