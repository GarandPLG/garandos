{
  lib,
  inputs,
  system,
  ...
}: {
  programs.noctalia-shell = {
    enable = true;
    package = inputs.noctalia.packages.${system}.default.override {
      calendarSupport = true;
    };
    systemd.enable = true;
    # settings.settingsVersion = lib.mkForce 46;
  };

  imports = [
    ./settings
    ./colors.nix
    ./plugins.nix
  ];
}
