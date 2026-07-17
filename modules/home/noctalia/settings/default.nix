_: {
  programs.noctalia.settings.config_version = 2;

  imports = [
    ./notification
    ./plugins
    ./audio.nix
    ./bar.nix
    ./calendar.nix
    ./location.nix
    ./shell.nix
    ./wallpaper.nix
    ./widget.nix
  ];
}
