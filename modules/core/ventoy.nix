{
  pkgs,
  lib,
  config,
  ...
}: {
  options.ventoy.enable = lib.mkEnableOption "Enable Ventoy";

  config = lib.mkIf config.ventoy.enable {
    environment.systemPackages = with pkgs; [ventoy-full-gtk];
    nixpkgs.config.permittedInsecurePackages = [
      "ventoy-gtk3-1.1.12"
    ];
  };
}
