{
  inputs,
  system,
  ...
}: {
  programs.noctalia = {
    enable = true;
    package = inputs.noctalia.packages.${system}.default;
    checkConfig = true;
  };

  imports = [
    ./settings
  ];
}
