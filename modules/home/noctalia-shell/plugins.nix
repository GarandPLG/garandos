{
  lib,
  config,
  ...
}: let
  sourceUrl = "https://github.com/noctalia-dev/noctalia-plugins";
in {
  options.noctalia-plugins = {
    mini-docker.enable = lib.mkEnableOption "Mini docker plugin";
    timer.enable = lib.mkEnableOption "Timer plugin";
    keybind-cheatsheet.enable = lib.mkEnableOption "Keybind cheatsheet plugin";
    kde-connect.enable = lib.mkEnableOption "KDE Connect plugin";
    screen-recorder.enable = lib.mkEnableOption "Screen-recorder plugin";
    screenshot.enable = lib.mkEnableOption "Screenshot plugin";
    ntfy-notifications.enable = lib.mkEnableOption "ntfy notifications plugin";
    tailscale.enable = lib.mkEnableOption "Tailscale plugin";
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
        mini-docker = lib.mkIf config.noctalia-plugins.mini-docker.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        timer = lib.mkIf config.noctalia-plugins.timer.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        keybind-cheatsheet = lib.mkIf config.noctalia-plugins.keybind-cheatsheet.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        kde-connect = lib.mkIf config.noctalia-plugins.kde-connect.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        screen-recorder = lib.mkIf config.noctalia-plugins.screen-recorder.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        screenshot = lib.mkIf config.noctalia-plugins.screenshot.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        ntfy-notifications = lib.mkIf config.noctalia-plugins.ntfy-notifications.enable {
          enabled = true;
          sourceUrl = sourceUrl;
        };
        tailscale = lib.mkIf config.noctalia-plugins.tailscale.enable {
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
      tailscale = {
        refreshInterval = 5000;
        compactMode = true;
        showIpAddress = false;
        showPeerCount = false;
        hideDisconnected = false;
        hideMullvadExitNodes = true;
        showSearchBar = false;
        terminalCommand = "kitty";
        sshUsername = "";
        pingCount = 5;
        defaultPeerAction = "copy-ip";
        taildropEnabled = true;
        taildropDownloadDir = "~/Downloads";
        taildropReceiveMode = "operator";
        loginServer = "https://hs.garandplg.com";
      };
    };
  };
}
