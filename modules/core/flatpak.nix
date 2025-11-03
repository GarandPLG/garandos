{ pkgs, ... }:
{
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
    configPackages = [ pkgs.hyprland ];
  };
  services = {
    flatpak = {
      enable = true;
      packages = [
        "org.vinegarhq.Sober"
        "io.github.flattool.Warehouse"
        "com.github.tchx84.Flatseal"
      ];
      update.onActivation = true;
    };
  };
}
