_: {
  nixpkgs.config.allowUnfree = true;
  imports = [
    ./appimages
    ./essentials.nix
    ./packages.nix
    ./programs.nix
  ];
}
