{lib, ...}: {
  wayland.windowManager.hyprland.settings.on._args = [
    "hyprland.start"
    (lib.generators.mkLuaInline "function()\n  hl.exec_cmd(\"dbus-update-activation-environment --all --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP\")\n  hl.exec_cmd(\"systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP\")\n  hl.exec_cmd(\"systemctl --user start hyprpolkitagent\")\n  hl.exec_cmd(\"noctalia\")\n  hl.exec_cmd(\"wl-paste --type text --watch cliphist store\")\n  hl.exec_cmd(\"wl-paste --type image --watch cliphist store\")\nend")
  ];
}
