{
  host,
  shell,
  ...
}: {
  stylix.targets = {
    librewolf.profileNames = ["${host}"];

    hyprland = {
      enable = true;
      colors.enable = true;
      hyprpaper.enable = true;
      image.enable = true;
    };

    vscode.enable = false;

    zed.enable = false;

    vesktop = {
      enable = true;
      colors.enable = true;
      fonts.enable = true;
    };

    noctalia-shell.enable = true;

    qt = {
      enable = true;
      platform = "qtct";
    };

    fish = {
      enable =
        if shell == "fish"
        then true
        else false;
      colors.enable = true;
      inputs.enable = true;
    };

    starship = {
      enable = true;
      colors.enable = true;
    };

    fzf = {
      enable = true;
      colors.enable = true;
    };

    bat = {
      enable = true;
      colors.enable = true;
    };

    anki = {
      enable = true;
      colors.enable = true;
    };

    btop = {
      enable = true;
      colors.enable = true;
      opacity.enable = true;
    };

    kitty = {
      enable = true;
      colors.enable = true;
      fonts.enable = true;
      inputs.enable = true;
      opacity.enable = true;
      variant256Colors = true;
    };
  };
}
