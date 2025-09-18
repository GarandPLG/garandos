{ pkgs, ... }:
{
  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
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
