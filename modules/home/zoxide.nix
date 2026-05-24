{shell, ...}: {
  programs.zoxide = {
    enable = true;
    enableFishIntegration =
      if shell == "fish"
      then true
      else false;
    enableBashIntegration =
      if shell == "bash"
      then true
      else false;
    options = [
      "--cmd cd"
    ];
  };
}
