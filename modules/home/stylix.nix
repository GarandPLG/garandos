{ host, ... }:
{
  stylix.targets = {
    librewolf.profileNames = [ "${host}" ];
    waybar.enable = false;
    rofi.enable = false;
    hyprland.enable = false;
    hyprlock.enable = false;
    vscode.enable = false;
    zed.enable = false;
    qt = {
      enable = true;
      platform = "qtct";
    };
  };
}
