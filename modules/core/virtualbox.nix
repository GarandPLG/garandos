{
  pkgs,
  lib,
  config,
  ...
}: {
  options.virtualbox.enable = lib.mkEnableOption "Enable VirtualBox";

  config.virtualisation.virtualbox.host = lib.mkIf config.virtualbox.enable {
    enable = true;
    package = pkgs.virtualbox;
    enableKvm = true;
    enableHardening = true;
    enableExtensionPack = false;
    addNetworkInterface = false;
  };
}
