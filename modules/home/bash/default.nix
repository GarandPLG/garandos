{host, ...}: let
  inherit (import ../../../hosts/${host}/variables.nix) shell;
in {
  programs.bash = {
    enable =
      if shell == "bash"
      then true
      else false;
    enableCompletion = true;
    # initExtra = ''
    #   fastfetch
    # '';
  };
  imports = [
    ./aliases.nix
    ./functions.nix
  ];
}
