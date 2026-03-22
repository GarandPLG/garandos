{lib, ...}: let
  sourceUrl = "https://github.com/noctalia-dev/noctalia-plugins";
in {
  programs.noctalia-shell = lib.mkForce {
    plugins = {
      sources = [
        {
          enabled = true;
          name = "Noctalia Plugins";
          url = sourceUrl;
        }
      ];
      states = {
        mini-docker = {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        timer = {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        keybind-cheatsheet = {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        kde-connect = {
          enabled = true;
          sourceUrl = sourceUrl;
        };
      };
      version = 2;
    };
    pluginSettings = {
      mini-docker.refreshInterval = 5000;
      timer.compactMode = true;
      keybind-cheatsheet = {
        niriConfigPath = "~/.config/niri/config.kdl";
        hyprlandConfigPath = "~/.config/hypr/hyprland.conf";
        modKeyVariable = "SUPER";
        windowHeight = 850;
        windowWidth = 1100;
        columnCount = 2;
        autoHeight = true;
      };
      kde-connect = {
        hideIfNoDeviceConnected = true;
      };
    };
  };
}
