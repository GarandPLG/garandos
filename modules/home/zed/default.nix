{pkgs, ...}: {
  programs.zed-editor = {
    enable = true;
    package = pkgs.zed-editor;
    installRemoteServer = true;
  };
  imports = [
    ./user-settings
    ./extensions.nix
    ./extra-packages.nix
  ];
}
