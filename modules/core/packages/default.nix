_: {
  nixpkgs.config.allowUnfree = true;
  imports = [
    ./essentials.nix
    ./packages.nix
    ./programs.nix
  ];
}
