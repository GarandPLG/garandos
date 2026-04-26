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
        screen-recorder = {
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
      screen-recorder = {
        hideInactive = true;
        iconColor = "none";
        directory = "";
        filenamePattern = "recording_yyyyMMdd_HHmmss";
        frameRate = 60;
        audioCodec = "aac";
        videoCodec = "hevc";
        quality = "ultra";
        colorRange = "full";
        showCursor = true;
        copyToClipboard = false;
        audioSource = "both";
        videoSource = "portal";
        resolution = "1920x1080";
        replayEnabled = true;
        replayDuration = 60;
        customReplayDuration = 30;
        replayStorage = "disk";
        restorePortalSession = true;
        customFrameRate = 6;
      };
    };
  };
}
