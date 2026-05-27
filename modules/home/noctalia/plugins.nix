{
  lib,
  config,
  ...
}: let
  sourceUrl = "https://github.com/noctalia-dev/noctalia-plugins";
in {
  options.nooctalia-plugins = {
    mini-docker.enable = lib.mkEnableOption "Mini docker plugin";
    timer.enable = lib.mkEnableOption "Timer plugin";
    keybind-cheatsheet.enable = lib.mkEnableOption "Keybind cheatsheet plugin";
    kde-connect.enable = lib.mkEnableOption "KDE Connect plugin";
    screen-recorder.enable = lib.mkEnableOption "Screen-recorder plugin";
    screenshot.enable = lib.mkEnableOption "Screenshot plugin";
    ntfy-notifications.enable = lib.mkEnableOption "ntfy notifications plugin";
  };

  config.programs.noctalia-shell = lib.mkForce {
    plugins = {
      sources = [
        {
          enabled = true;
          name = "Noctalia Plugins";
          url = sourceUrl;
        }
      ];
      states = {
        mini-docker = lib.mkIf config.nooctalia-plugins.mini-docker.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        timer = lib.mkIf config.nooctalia-plugins.timer.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        keybind-cheatsheet = lib.mkIf config.nooctalia-plugins.keybind-cheatsheet.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        kde-connect = lib.mkIf config.nooctalia-plugins.kde-connect.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        screen-recorder = lib.mkIf config.nooctalia-plugins.screen-recorder.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        screenshot = lib.mkIf config.nooctalia-plugins.screenshot.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        ntfy-notifications = lib.mkIf config.nooctalia-plugins.ntfy-notifications.enable {
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
      screenshot.mode = "region";
      # ntfy-notifications = {
      #   serverUrl = "https://ntfy.garandplg.com";
      #   topics = "beszel,dockhand,jellyfin,nixos-unstable,radarr,rss-feeds,seerr,sonarr";
      #   authMethod = "basic";
      #   authToken = "";
      #   authUsername = ''$(cat ${config.sops.secrets."credentials/ntfy/username".path})'';
      #   authPassword = ''$(cat ${config.sops.secrets."credentials/ntfy/password".path})'';
      #   pollInterval = 30;
      #   enableToasts = true;
      #   maxMessages = 100;
      #   readMessageIds = [];
      # };
    };
  };
}
