{pkgs, ...}: {
  programs.onlyoffice = {
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
