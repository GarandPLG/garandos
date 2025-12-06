{
  host,
  username,
  ...
}: {
  programs.garandos-tui = {
    enable = true;
    systemModulesFilePath = "/home/${username}/garandos/hosts/${host}/system-modules.nix";
    homeModulesFilePath = "/home/${username}/garandos/hosts/${host}/home-modules.nix";
  };
}
