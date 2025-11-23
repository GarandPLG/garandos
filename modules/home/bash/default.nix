_: {
  programs.bash = {
    enable = true;
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
