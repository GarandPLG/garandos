_: {
  programs.noctalia.settings.plugins = {
    enabled = ["noctalia/timer" "noctalia/screen_recorder"];
  };

  imports = [
    ./screen-recorder.nix
  ];
}
