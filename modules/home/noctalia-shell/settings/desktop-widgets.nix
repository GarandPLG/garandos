{lib, ...}: {
  programs.noctalia-shell.settings.desktop-widgets = lib.mkForce {
    "enabled" = false;
    "gridSnap" = false;
    "monitorWidgets" = [];
  };
}
