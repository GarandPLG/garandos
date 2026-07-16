{lib, ...}: {
  programs.noctalia-shell.settings.osd = lib.mkForce {
    "enabled" = true;
    "location" = "right";
    "autoHideMs" = 2000;
    "overlayLayer" = true;
    "backgroundOpacity" = 0;
    "enabledTypes" = [
      0
      1
      2
    ];
    "monitors" = [];
  };
}
