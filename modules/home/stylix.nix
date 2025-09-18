{ host, ... }:
{
  stylix.targets = {
    librewolf.profileNames = [ "${host}" ];
    waybar.enable = false;
    rofi.enable = false;
    hyprland.enable = false;
    hyprlock.enable = false;
    ghostty.enable = false;
    vscode.enable = false;
    qt = {
      enable = true;
      platform = "qtct";
    };
  };
}
