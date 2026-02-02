{lib, ...}: {
  programs.noctalia-shell.settings.templates = lib.mkForce {
    activeTemplates = [];
    enableUserTheming = false;
  };
}
