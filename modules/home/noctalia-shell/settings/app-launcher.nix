{lib, ...}: {
  programs.noctalia-shell.settings.appLauncher = lib.mkForce {
    enableClipboardHistory = true;
    autoPasteClipboard = false;
    enableClipPreview = true;
    clipboardWrapText = true;
    clipboardWatchTextCommand = "wl-paste --type text --watch cliphist store";
    clipboardWatchImageCommand = "wl-paste --type image --watch cliphist store";
    position = "center";
    pinnedApps = [];
    useApp2Unit = true;
    sortByMostUsed = true;
    terminalCommand = "kitty -e";
    customLaunchPrefixEnabled = false;
    customLaunchPrefix = "";
    viewMode = "list";
    showCategories = true;
    iconMode = "native";
    showIconBackground = false;
    enableSettingsSearch = true;
    enableWindowsSearch = true;
    ignoreMouseInput = false;
    screenshotAnnotationTool = "";
  };
}
