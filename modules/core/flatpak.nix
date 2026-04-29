{
  lib,
  config,
  ...
}: let
  mkFlatpakPackage = name: pkgId: {
    options.flatpak.packages.${name}.enable = lib.mkEnableOption "Flatpak: ${name}";

    config.services.flatpak.packages =
      lib.mkIf config.flatpak.packages.${name}.enable [pkgId];
  };

  flatpakPackages = {
    sober = "org.vinegarhq.Sober";
    warehouse = "io.github.flattool.Warehouse";
    flatseal = "com.github.tchx84.Flatseal";
    upscaler = "io.gitlab.theevilskeleton.Upscaler";
  };
in {
  options.flatpak.enable = lib.mkEnableOption "Flatpak";

  config.services.flatpak = lib.mkIf config.flatpak.enable {
    enable = true;
    update.onActivation = true;
    packages = [];
  };

  imports = builtins.attrValues (builtins.mapAttrs mkFlatpakPackage flatpakPackages);
}
