{lib, ...}: {
  programs.noctalia-shell = lib.mkForce {
    plugins = {
      sources = [
        {
          enabled = true;
          name = "Noctalia Plugins";
          url = "https://github.com/noctalia-dev/noctalia-plugins";
        }
      ];
      states = {
        mini-docker = {
          enabled = true;
          sourceUrl = "https://github.com/noctalia-dev/noctalia-plugins";
        };
        timer = {
          enabled = true;
          sourceUrl = "https://github.com/noctalia-dev/noctalia-plugins";
        };
        keybind-cheatsheet = {
          enabled = true;
          sourceUrl = "https://github.com/noctalia-dev/noctalia-plugins";
        };
      };
      version = 1;
    };
    pluginSettings = {
      mini-docker.refreshInterval = 5000;
      timer.compactMode = true;
      keybind-cheatsheet = {
        niriConfigPath = "~/.config/niri/config.kdl";
        hyprlandConfigPath = "~/.config/hypr/hyprland.conf";
        modKeyVariable = "SUPER";
        windowHeight = 850;
        windowWidth = 1400;
        autoHeight = true;
      };
    };
  };
}
