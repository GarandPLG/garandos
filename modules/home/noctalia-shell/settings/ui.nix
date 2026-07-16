{lib, ...}: {
  programs.noctalia-shell.settings.ui = lib.mkForce {
    fontDefault = "Fira Code";
    fontFixed = "Fira Mono for Powerline";
    fontDefaultScale = 1;
    fontFixedScale = 1;
    tooltipsEnabled = true;
    panelBackgroundOpacity = 0.76;
    panelsAttachedToBar = true;
    settingsPanelMode = "attached";
    wifiDetailsViewMode = "grid";
    bluetoothDetailsViewMode = "grid";
    networkPanelView = "wifi";
    bluetoothHideUnnamedDevices = false;
    boxBorderEnabled = false;
  };
}
