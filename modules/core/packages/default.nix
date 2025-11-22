{ ... }:
{
  nixpkgs.config.allowUnfree = true;
  imports = [
    ./programs.nix
    ./clients.nix
    ./development.nix
    ./gaming.nix
    ./multimedia.nix
    ./terminal.nix
    ./tools.nix
    ./virtualization.nix
  ];
}
