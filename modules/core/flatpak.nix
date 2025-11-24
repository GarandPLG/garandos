{
  lib,
  config,
  ...
}: {
  options.flatpak.enable = lib.mkEnableOption "Flatpak";

  config.services.flatpak = lib.mkIf config.flatpak.enable {
    enable = true;
    update.onActivation = true;
    packages = [
      # "org.vinegarhq.Sober"
      "io.github.flattool.Warehouse"
      "com.github.tchx84.Flatseal"
    ];
  };
}
