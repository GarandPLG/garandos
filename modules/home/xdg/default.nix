_: {
  xdg = {
    enable = true;
    mime.enable = true;
    mimeApps.enable = true;
  };

  imports = [
    ./desktop-entries.nix
    ./portal.nix
  ];
}
