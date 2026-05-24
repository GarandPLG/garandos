{shell, ...}: {
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
