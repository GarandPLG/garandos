{lib, ...}: {
  programs.noctalia-shell.settings.brightness = lib.mkForce {
    brightnessStep = 5;
    enforceMinimum = true;
    enableDdcSupport = true;
  };
}
