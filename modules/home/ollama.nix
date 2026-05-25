{
  pkgs,
  lib,
  config,
  profile,
  ...
}: {
  options.ollama.enable = lib.mkEnableOption "Ollama";

  config.services.ollama = lib.mkIf config.ollama.enable {
    enable = true;
    package = pkgs.ollama;
    acceleration =
      if profile == "nvidia"
      then "cuda"
      else if profile == "amd"
      then "rocm"
      else null;
  };
}
