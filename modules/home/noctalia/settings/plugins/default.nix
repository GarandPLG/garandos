_: {
  programs.noctalia.settings.plugins = {
    enabled = [
      "noctalia/screen_recorder"
      "oldirtty/color_picker"
      "nightwatch75/file-search"
      "avivbintangaringga/nix-monitor"
    ];
  };

  imports = [
    ./screen-recorder.nix
    ./nix-monitor.nix
  ];
}
