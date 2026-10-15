{
  pkgs,
  lib,
  config,
  ...
}: {
  options.zed-editor = {
    enable = lib.mkEnableOption "Zed Editor";
    remote-server.enable = lib.mkEnableOption "Zed Editor Remote Server";
  };

  config.programs.zed-editor = lib.mkIf config.zed-editor.enable {
    enable = true;
    package = pkgs.zed-editor;
    installRemoteServer = lib.mkIf config.zed-editor.remote-server.enable true;
  };

  imports = [
    ./user-settings
    ./extensions.nix
    ./extra-packages.nix
  ];
}
