{
  pkgs,
  stylixImage,
  ...
}: {
  # Styling Options
  stylix = {
    enable = true;
    image = ../../wallpapers/${stylixImage};
    polarity = "dark";
    opacity.terminal = 1.0;
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.fira-mono;
        name = "FiraCode Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.nerd-fonts.fira-code;
        name = "FiraCode Nerd Font Propo";
      };
      serif = {
        package = pkgs.nerd-fonts.fira-code;
        name = "FiraCode Nerd Font";
      };
      sizes = {
        applications = 12;
        terminal = 15;
        desktop = 11;
        popups = 12;
      };
    };
    targets = {
      limine = {
        enable = true;
        colors.enable = true;
        image.enable = true;
        imageScalingMode = {
          enable = true;
          override = "tile";
        };
      };
      kmscon = {
        enable = false;
        colors.enable = true;
        fonts.enable = true;
      };
    };
  };
}
