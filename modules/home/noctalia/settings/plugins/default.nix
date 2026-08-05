_: {
  programs.noctalia.settings.plugins = {
    enabled = [
      "noctalia/bitwarden"
      "oldirtty/color_picker"
      "nightwatch75/file-search"
      "kenn/keybind-cheatsheet"
      "avivbintangaringga/nix-monitor"
      "noctalia/screen_recorder"
    ];
  };

  imports = [
    ./bitwarden.nix
    ./keybind-cheatsheet.nix
    ./screen-recorder.nix
    ./nix-monitor.nix
  ];
}
