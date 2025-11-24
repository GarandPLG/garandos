{
  lib,
  config,
  ...
}: {
  options.cava.enable = lib.mkEnableOption "Cava";

  config.programs.cava = lib.mkIf config.cava.enable {
    enable = true;
    settings = {
      general = {
        bar_spacing = 1;
        bar_width = 2;
        frame_rate = 144;
      };
    };
  };
}
