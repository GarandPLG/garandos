{ pkgs, username, ... }:
{
  programs.anki = {
    enable = true;
    package = pkgs.anki;
    language = "pl_PL";
    style = "native";
    sync.username = username;
  };
}
