{host, ...}: {
  stylix.targets = {
    librewolf.profileNames = ["${host}"];
    hyprland.enable = false;
    vscode.enable = false;
    zed.enable = false;
    vesktop.enable = false;
    qt = {
      enable = true;
      platform = "qtct";
    };
    noctalia-shell.enable = true;
  };
}
