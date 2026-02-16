_: {
  nixpkgs.config.allowUnfree = true;
  imports = [
    ./fluxer
    ./essentials.nix
    ./packages.nix
    ./programs.nix
  ];
}
