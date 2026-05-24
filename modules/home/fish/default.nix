{
  pkgs,
  host,
  ...
}: let
  inherit (import ../../../hosts/${host}/variables.nix) shell;
in {
  programs = {
    fish = {
      enable =
        if shell == "fish"
        then true
        else false;
      package = pkgs.fish;
      generateCompletions = true;
      interactiveShellInit = ''
        set fish_greeting
        # fastfetch
      '';
    };

    nix-your-shell = {
      enable = true;
      package = pkgs.nix-your-shell;
      enableFishIntegration = true;
      nix-output-monitor = {
        enable = true;
        package = pkgs.nix-output-monitor;
      };
    };
  };

  imports = [
    ./aliases.nix
    ./functions.nix
    ./plugins.nix
  ];
}
