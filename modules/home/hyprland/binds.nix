{
  lib,
  username,
  ...
}: let
  desktopEntriesPath = "/home/${username}/.local/state/home-manager/gcroots/current-home/home-path/share/applications/";

  mainBinds = [
    {
      _args = [
        "SUPER + A"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"anki\")")
        {description = "Flashcard learning application";}
      ];
    }
    {
      _args = [
        "SUPER + B"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle launcher \\\"/bw \\\"\")")
        {description = "Password manager";}
      ];
    }
    {
      _args = [
        "SUPER + C"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"chromium\")")
        {description = "Ungoogled Chromium";}
      ];
    }
    {
      _args = [
        "SUPER + D"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"vesktop\")")
        {description = "Discord client";}
      ];
    }
    {
      _args = [
        "SUPER + E"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle launcher \\\"/emo \\\"\")")
        {description = "Emoji picker";}
      ];
    }
    {
      _args = [
        "SUPER + Escape"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg session lock\")")
        {description = "Lock the screen";}
      ];
    }
    {
      _args = [
        "SUPER + G"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"affinity-v3\")")
        {description = "Graphics editor";}
      ];
    }
    {
      _args = [
        "SUPER + H"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"helium\")")
        {description = "Helium web browser";}
      ];
    }
    {
      _args = [
        "SUPER + I"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"iotas\")")
        {description = "Note-taking app";}
      ];
    }
    {
      _args = [
        "SUPER + J"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"Jan\")")
        {description = "Local AI chat interface";}
      ];
    }
    {
      _args = [
        "SUPER + K"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"gnome-calculator\")")
        {description = "Scientific calculator";}
      ];
    }
    {
      _args = [
        "SUPER + L"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"logseq\")")
        {description = "Knowledge management tool";}
      ];
    }
    {
      _args = [
        "SUPER + M"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"dex ${desktopEntriesPath}/messenger.desktop\")")
        {description = "Facebook Messenger client";}
      ];
    }
    {
      _args = [
        "SUPER + N"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"dex ${desktopEntriesPath}/garandcloud.desktop\")")
        {description = "GarandCloud client";}
      ];
    }
    {
      _args = [
        "SUPER + O"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"onlyoffice-desktopeditors\")")
        {description = "Office suite";}
      ];
    }
    {
      _args = [
        "SUPER + P"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"plex-desktop\")")
        {description = "Plex media player";}
      ];
    }
    {
      _args = [
        "SUPER + R"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg plugin noctalia/screen_recorder:service all replay-save\")")
        {description = "Save Replay";}
      ];
    }
    {
      _args = [
        "SUPER + Return"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"kitty\")")
        {description = "Kitty terminal";}
      ];
    }
    {
      _args = [
        "SUPER + S"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"steam\")")
        {description = "Steam Game launcher";}
      ];
    }
    {
      _args = [
        "SUPER + T"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"thunar\")")
        {description = "File manager";}
      ];
    }
    {
      _args = [
        "SUPER + V"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"codium\")")
        {description = "VS Codium";}
      ];
    }
    {
      _args = [
        "SUPER + W"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"librewolf\")")
        {description = "Main Web browser (Librewolf)";}
      ];
    }
    {
      _args = [
        "SUPER + Z"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"zeditor\")")
        {description = "Zed IDE";}
      ];
    }
  ];

  shiftBinds = [
    {
      _args = [
        "SUPER + SHIFT + C"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"dex ${desktopEntriesPath}/claude.desktop\")")
        {description = "Claude AI chat";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + E"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"evolution\")")
        {description = "Personal information management application";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + Escape"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle session\")")
        {description = "Open Session Menu";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + G"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"dex ${desktopEntriesPath}/chatgpt.desktop\")")
        {description = "ChatGPT AI chat";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + J"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"dex ${desktopEntriesPath}/jellyfinClient.desktop\")")
        {description = "Jellyfin PWA";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + K"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle kenn/keybind-cheatsheet:cheatsheet\")")
        {description = "Toggle keybind cheatsheet";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + M"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"plexamp\")")
        {description = "Music player for Plex";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + N"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"nextcloud\")")
        {description = "Nextcloud desktop sync client";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + O"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"obs\")")
        {description = "Open Broadcaster Software";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + P"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"pavucontrol\")")
        {description = "Toggle volume control panel";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + R"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg config-reload\")")
        {description = "Restart Noctalia shell";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + Return"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle launcher\")")
        {description = "Toggle application launcher";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + S"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg screenshot-region\")")
        {description = "Take screenshot";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + T"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"tutanota-desktop\")")
        {description = "Tutanota encrypted email client";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + V"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle clipboard\")")
        {description = "Open clipboard manager";}
      ];
    }
  ];

  altBinds = [
    {
      _args = [
        "SUPER + ALT + C"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle control-center [tab]\")")
        {description = "Toggle control center";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + F"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"finamp\")")
        {description = "Jellyfin music client";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + G"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"dex ${desktopEntriesPath}/glance.desktop\")")
        {description = "Glance server panel";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + K"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"kdenlive\")")
        {description = "Video editing software";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + M"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"dex ${desktopEntriesPath}/mastodon.desktop\")")
        {description = "Mastodon social network client";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + N"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle avivbintangaringga/nix-monitor:panel\")")
        {description = "Open nix-monitor";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + O"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"obsidian\")")
        {description = "Notes app";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + P"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg settings-open\")")
        {description = "Open settings panel";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + R"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg plugin noctalia/screen_recorder:service all replay-toggle\")")
        {description = "Toggle Replay";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + S"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"slack\")")
        {description = "Slack team communication tool";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + T"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"gedit\")")
        {description = "GNOME text editor";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + W"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle wallpaper\")")
        {description = "Toggle wallpaper";}
      ];
    }
  ];

  controlBinds = [
    {
      _args = [
        "SUPER + CONTROL + C"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg power-cycle\")")
        {description = "Cycle through power profiles";}
      ];
    }
    {
      _args = [
        "SUPER + CONTROL + F"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle nightwatch75/file-search:panel\")")
        {description = "File search";}
      ];
    }
    {
      _args = [
        "SUPER + CONTROL + G"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"gimp\")")
        {description = "GNU Image Manipulation Program";}
      ];
    }
    {
      _args = [
        "SUPER + CONTROL + M"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"mattermost-desktop\")")
        {description = "Mattermost team chat client";}
      ];
    }
    # {
    #   _args = [
    #     "SUPER + CONTROL + N"
    #     (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia-shell ipc call plugin:ntfy-notifications refresh\")")
    #     {description = "Refresh ntfy";}
    #   ];
    # }
    {
      _args = [
        "SUPER + CONTROL + O"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"dex ${desktopEntriesPath}/openWebUI.desktop\")")
        {description = "My own AI chat interface";}
      ];
    }
    {
      _args = [
        "SUPER + CONTROL + R"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg plugin noctalia/screen_recorder:service all toggle\")")
        {description = "Toogle screen recording";}
      ];
    }
    {
      _args = [
        "SUPER + CONTROL + S"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"signal-desktop\")")
        {description = "Signal encrypted messaging";}
      ];
    }
    {
      _args = [
        "SUPER + CONTROL + T"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"tsukimi\")")
        {description = "A simple Emby/Jellyfin Client";}
      ];
    }
    {
      _args = [
        "SUPER + CONTROL + P"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg panel-toggle oldirtty/color_picker:panel\")")
        {description = "Pick color from screen";}
      ];
    }
  ];

  windowManagementBinds = [
    {
      _args = [
        "SUPER + F"
        (lib.generators.mkLuaInline "hl.dsp.window.fullscreen({ action = \"toggle\" })")
        {description = "Toggle fullscreen mode";}
      ];
    }
    {
      _args = [
        "SUPER + Q"
        (lib.generators.mkLuaInline "hl.dsp.window.close()")
        {description = "Close active window";}
      ];
    }
    # {
    #   _args = [
    #     "SUPER + SHIFT + I"
    #     (lib.generators.mkLuaInline "hl.dsp.window.float({ action = \"togglesplit\" })")
    #     {description = "Toggle split layout";}
    #   ];
    # }
    {
      _args = [
        "SUPER + SHIFT + F"
        (lib.generators.mkLuaInline "hl.dsp.window.float({ action = \"toggle\" })")
        {description = "Toggle floating mode";}
      ];
    }
  ];

  windowFocusBinds = [
    {
      _args = [
        "SUPER + down"
        (lib.generators.mkLuaInline "hl.dsp.focus({ direction = \"down\" })")
        {description = "Move focus down";}
      ];
    }
    {
      _args = [
        "SUPER + left"
        (lib.generators.mkLuaInline "hl.dsp.focus({ direction = \"left\" })")
        {description = "Move focus left";}
      ];
    }
    {
      _args = [
        "SUPER + right"
        (lib.generators.mkLuaInline "hl.dsp.focus({ direction = \"right\" })")
        {description = "Move focus right";}
      ];
    }
    {
      _args = [
        "SUPER + up"
        (lib.generators.mkLuaInline "hl.dsp.focus({ direction = \"up\" })")
        {description = "Move focus up";}
      ];
    }
  ];

  windowMovementBinds = [
    {
      _args = [
        "SUPER + SHIFT + down"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ direction = \"down\" })")
        {description = "Move window down";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + left"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ direction = \"left\" })")
        {description = "Move window left";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + right"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ direction = \"right\" })")
        {description = "Move window right";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + up"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ direction = \"up\" })")
        {description = "Move window up";}
      ];
    }
  ];

  windowSwapBinds = [
    {
      _args = [
        "SUPER + ALT + down"
        (lib.generators.mkLuaInline "hl.dsp.window.swap({ direction = \"down\" })")
        {description = "Swap active window with window below";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + left"
        (lib.generators.mkLuaInline "hl.dsp.window.swap({ direction = \"left\" })")
        {description = "Swap active window with window on the left";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + right"
        (lib.generators.mkLuaInline "hl.dsp.window.swap({ direction = \"right\" })")
        {description = "Swap active window with window on the right";}
      ];
    }
    {
      _args = [
        "SUPER + ALT + up"
        (lib.generators.mkLuaInline "hl.dsp.window.swap({ direction = \"up\" })")
        {description = "Swap active window with window above";}
      ];
    }
  ];

  workspacesSwitchBinds = [
    {
      _args = [
        "SUPER + 0"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 10 })")
        {description = "Switch to workspace 10";}
      ];
    }
    {
      _args = [
        "SUPER + 1"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 1 })")
        {description = "Switch to workspace 1";}
      ];
    }
    {
      _args = [
        "SUPER + 2"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 2 })")
        {description = "Switch to workspace 2";}
      ];
    }
    {
      _args = [
        "SUPER + 3"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 3 })")
        {description = "Switch to workspace 3";}
      ];
    }
    {
      _args = [
        "SUPER + 4"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 4 })")
        {description = "Switch to workspace 4";}
      ];
    }
    {
      _args = [
        "SUPER + 5"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 5 })")
        {description = "Switch to workspace 5";}
      ];
    }
    {
      _args = [
        "SUPER + 6"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 6 })")
        {description = "Switch to workspace 6";}
      ];
    }
    {
      _args = [
        "SUPER + 7"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 7 })")
        {description = "Switch to workspace 7";}
      ];
    }
    {
      _args = [
        "SUPER + 8"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 8 })")
        {description = "Switch to workspace 8";}
      ];
    }
    {
      _args = [
        "SUPER + 9"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 9 })")
        {description = "Switch to workspace 9";}
      ];
    }
    {
      _args = [
        "SUPER + CONTROL + left"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = \"e-1\" })")
        {description = "Switch to previous workspace";}
      ];
    }
    {
      _args = [
        "SUPER + CONTROL + right"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = \"e+1\" })")
        {description = "Switch to next workspace";}
      ];
    }
    {
      _args = [
        "SUPER + mouse_down"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = \"e+1\" })")
        {description = "Switch to next workspace with mouse";}
      ];
    }
    {
      _args = [
        "SUPER + mouse_up"
        (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = \"e-1\" })")
        {description = "Switch to previous workspace with mouse";}
      ];
    }
  ];

  workspacesSwapBinds = [
    {
      _args = [
        "SUPER + SHIFT + 0"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 10 })")
        {description = "Move active window to workspace 10";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + 1"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 1 })")
        {description = "Move active window to workspace 1";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + 2"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 2 })")
        {description = "Move active window to workspace 2";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + 3"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 3 })")
        {description = "Move active window to workspace 3";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + 4"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 4 })")
        {description = "Move active window to workspace 4";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + 5"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 5 })")
        {description = "Move active window to workspace 5";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + 6"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 6 })")
        {description = "Move active window to workspace 6";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + 7"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 7 })")
        {description = "Move active window to workspace 7";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + 8"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 8 })")
        {description = "Move active window to workspace 8";}
      ];
    }
    {
      _args = [
        "SUPER + SHIFT + 9"
        (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 9 })")
        {description = "Move active window to workspace 9";}
      ];
    }
  ];

  systemMediaAndControlsBinds = [
    {
      _args = [
        "XF86AudioLowerVolume"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg volume-down\")")
        {description = "Lower system volume";}
      ];
    }
    {
      _args = [
        "XF86AudioMute"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg volume-mute\")")
        {description = "Mute audio output";}
      ];
    }
    {
      _args = [
        "XF86AudioMicMute"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg mic-mute\")")
        {description = "Mute audio input";}
      ];
    }
    {
      _args = [
        "XF86AudioNext"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg media next\")")
        {description = "Next media track";}
      ];
    }
    {
      _args = [
        "XF86AudioPlay"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg media toggle\")")
        {description = "Play/Pause media";}
      ];
    }
    {
      _args = [
        "XF86AudioPrev"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg media previous\")")
        {description = "Previous media track";}
      ];
    }
    {
      _args = [
        "XF86AudioRaiseVolume"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg volume-up\")")
        {description = "Raise system volume";}
      ];
    }
    {
      _args = [
        "XF86MonBrightnessDown"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg brightness-down\")")
        {description = "Decrease screen brightness";}
      ];
    }
    {
      _args = [
        "XF86MonBrightnessUp"
        (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"noctalia msg brightness-up\")")
        {description = "Increase screen brightness";}
      ];
    }
  ];

  mouseBinds = [
    {
      _args = [
        "SUPER + mouse:272"
        (lib.generators.mkLuaInline "hl.dsp.window.drag()")
        {
          mouse = true;
          description = "Drag active window";
        }
      ];
    }
    {
      _args = [
        "SUPER + mouse:273"
        (lib.generators.mkLuaInline "hl.dsp.window.resize()")
        {
          mouse = true;
          description = "Resize active window";
        }
      ];
    }
  ];

  toLua = lib.generators.toLua {};

  # Noctalia scans numbered Lua headings and bare description fields.
  mkBlock = header: binds:
    lib.concatLines (
      ["-- ${header}"]
      ++ map (bind: let
        args = lib.concatMapStringsSep ", " toLua (lib.take 2 bind._args);
        options = lib.concatStringsSep ", " (
          lib.mapAttrsToList (name: value: "${name} = ${toLua value}") (builtins.elemAt bind._args 2)
        );
      in "hl.bind(${args}, { ${options} })")
      binds
    );
in {
  wayland.windowManager.hyprland.extraConfig = lib.concatLines [
    (mkBlock "1. MAIN APPS" mainBinds)
    (mkBlock "2. SHIFT APPS" shiftBinds)
    (mkBlock "3. ALT APPS" altBinds)
    (mkBlock "4. CONTROL APPS" controlBinds)
    (mkBlock "5. WINDOW MANAGEMENT" windowManagementBinds)
    (mkBlock "6. WINDOWS FOCUS" windowFocusBinds)
    (mkBlock "7. WINDOWS MOVEMENT" windowMovementBinds)
    (mkBlock "8. WINDOWS SWAP" windowSwapBinds)
    (mkBlock "9. WORKSPACES SWITCH" workspacesSwitchBinds)
    (mkBlock "10. WORKSPACES SWAP" workspacesSwapBinds)
    (mkBlock "11. SYSTEM MEDIA & CONTROLS" systemMediaAndControlsBinds)
    (mkBlock "12. MOUSE" mouseBinds)
  ];
}
