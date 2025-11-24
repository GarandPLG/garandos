{
  pkgs,
  lib,
  config,
  ...
}: {
  options.onlyoffice.enable = lib.mkEnableOption "OnlyOffice";

  config.programs.onlyoffice = lib.mkIf config.onlyoffice.enable {
    enable = true;
    package = pkgs.onlyoffice-desktopeditors;
    settings = {
      UITheme = "theme-night";
      editorWindowMode = false;
      position = "@Rect(10 50 1900 1020)";
      titlebar = "custom";
    };
  };
}
