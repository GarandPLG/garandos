_: {
  xdg = {
    enable = true;
    mime.enable = true;
    mimeApps.enable = true;
    configFile."mimeapps.list".force = true;
  };

  imports = [
    ./desktop-entries.nix
    ./portal.nix
  ];
}
