_: {
  programs.opencode.settings = {
    autoupdate = false;
    compaction = {
      auto = true;
      prune = false;
    };
  };

  imports = [
    ./formatter.nix
    ./model.nix
    ./permission.nix
    ./plugin.nix
  ];
}
