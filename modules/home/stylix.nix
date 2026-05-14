{host, ...}: {
  stylix.targets = {
    librewolf.profileNames = ["${host}"];
    hyprland.enable = false;
    vscode.enable = false;
    zed.enable = false;
    vesktop.enable = false;
    noctalia-shell.enable = true;
    qt = {
      enable = true;
      platform = "qtct";
    };
  };
}
