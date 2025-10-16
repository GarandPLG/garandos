{ pkgs, ... }:
{
  programs.anki = {
    enable = true;
    package = pkgs.anki;
  };
}
