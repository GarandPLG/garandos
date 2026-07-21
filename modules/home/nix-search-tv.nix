{pkgs, ...}: {
  programs.nix-search-tv = {
    enable = true;
    package = pkgs.nix-search-tv;
    settings.indexes = ["nixpkgs"];
  };
}
