{lib, ...}: {
  programs.noctalia-shell.settings.network = lib.mkForce {
    wifiEnabled = true;
    bluetoothRssiPollingEnabled = true;
    bluetoothRssiPollIntervalMs = 10000;
    wifiDetailsViewMode = "grid";
    bluetoothDetailsViewMode = "grid";
    bluetoothHideUnnamedDevices = false;
  };
}
