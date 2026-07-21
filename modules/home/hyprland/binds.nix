{
  lib,
  username,
  ...
}: let
  desktopEntriesPath = "/home/${username}/.local/state/home-manager/gcroots/current-home/home-path/share/applications/";

  mainBinds = [
    "SUPER, A, exec, anki #\"Flashcard learning application\""
    "SUPER, B, exec, bitwarden #\"Password manager\""
    "SUPER, C, exec, chromium #\"Ungoogled Chromium\""
    "SUPER, D, exec, vesktop #\"Discord client\""
    "SUPER, E, exec, noctalia msg panel-toggle launcher \"/emo \" #\"Emoji picker\""
    "SUPER, Escape, exec, noctalia msg session lock #\"Lock the screen\""
    "SUPER, G, exec, affinity-v3 #\"Graphics editor\""
    "SUPER, H, exec, helium #\"Helium web browser\""
    "SUPER, I, exec, iotas #\"Note-taking app\""
    "SUPER, J, exec, Jan #\"Local AI chat interface\""
    "SUPER, K, exec, gnome-calculator #\"Scientific calculator\""
    "SUPER, L, exec, logseq #\"Knowledge management tool\""
    "SUPER, M, exec, dex ${desktopEntriesPath}/messenger.desktop #\"Facebook Messenger client\""
    "SUPER, N, exec, dex ${desktopEntriesPath}/garandcloud.desktop #\"GarandCloud client\""
    "SUPER, O, exec, onlyoffice-desktopeditors #\"Office suite\""
    "SUPER, P, exec, plex-desktop #\"Plex media player\""
    "SUPER, R, exec, noctalia msg plugin noctalia/screen_recorder:service all replay-save #\"Save Replay\""
    "SUPER, Return, exec, kitty #\"Kitty terminal\""
    "SUPER, S, exec, steam #\"Steam Game launcher\""
    "SUPER, T, exec, thunar #\"File manager\""
    "SUPER, V, exec, codium #\"VS Codium\""
    "SUPER, W, exec, librewolf #\"Main Web browser (Librewolf)\""
    "SUPER, Z, exec, zeditor #\"Zed IDE\""
  ];

  shiftBinds = [
    "SUPER SHIFT, C, exec, dex ${desktopEntriesPath}/claude.desktop #\"Claude AI chat\""
    "SUPER SHIFT, E, exec, evolution #\"Personal information management application\""
    "SUPER SHIFT, Escape, exec, noctalia msg panel-toggle session #\"Open Session Menu\""
    "SUPER SHIFT, G, exec, dex ${desktopEntriesPath}/chatgpt.desktop #\"ChatGPT AI chat\""
    "SUPER SHIFT, J, exec, dex ${desktopEntriesPath}/jellyfinClient.desktop #\"Jellyfin PWA\""
    # "SUPER SHIFT, K, exec, noctalia-shell ipc call plugin:keybind-cheatsheet toggle #\"Toggle keybind cheatsheet\""
    "SUPER SHIFT, M, exec, plexamp #\"Music player for Plex\""
    "SUPER SHIFT, N, exec, nextcloud #\"Nextcloud desktop sync client\""
    "SUPER SHIFT, O, exec, obs #\"Open Broadcaster Software\""
    "SUPER SHIFT, P, exec, pavucontrol #\"Toggle volume control panel\""
    "SUPER SHIFT, R, exec, noctalia msg config-reload #\"Restart Noctalia shell\""
    "SUPER SHIFT, Return, exec, noctalia msg panel-toggle launcher #\"Toggle application launcher\""
    "SUPER SHIFT, S, exec, noctalia msg screenshot-region #\"Take screenshot\""
    "SUPER SHIFT, T, exec, tutanota-desktop #\"Tutanota encrypted email client\""
    "SUPER SHIFT, V, exec, noctalia msg panel-toggle clipboard #\"Open clipboard manager\""
  ];

  altBinds = [
    "SUPER ALT, C, exec, noctalia msg panel-toggle control-center [tab] #\"Toggle control center\""
    "SUPER ALT, F, exec, finamp #\"Jellyfin music client\""
    "SUPER ALT, G, exec, dex ${desktopEntriesPath}/glance.desktop #\"Glance server panel\""
    "SUPER ALT, K, exec, kdenlive #\"Video editing software\""
    "SUPER ALT, M, exec, dex ${desktopEntriesPath}/mastodon.desktop #\"Mastodon social network client\""
    "SUPER ALT, N, exec, noctalia msg panel-toggle avivbintangaringga/nix-monitor:panel #\"Open nix-monitor\""
    "SUPER ALT, O, exec, obsidian #\"Notes app\""
    "SUPER ALT, P, exec, noctalia msg settings-open #\"Open settings panel\""
    "SUPER ALT, R, exec, noctalia msg plugin noctalia/screen_recorder:service all replay-toggle #\"Toggle Replay\""
    "SUPER ALT, S, exec, slack #\"Slack team communication tool\""
    "SUPER ALT, T, exec, gedit #\"GNOME text editor\""
    "SUPER ALT, W, exec, noctalia msg panel-toggle wallpaper #\"Toggle wallpaper\""
  ];

  controlBinds = [
    "SUPER CONTROL, C, exec, noctalia msg power-cycle #\"Cycle through power profiles\""
    "SUPER CONTROL, F, exec, noctalia msg panel-toggle nightwatch75/file-search:panel #\"File search\""
    "SUPER CONTROL, G, exec, gimp #\"GNU Image Manipulation Program\""
    "SUPER CONTROL, M, exec, mattermost-desktop #\"Mattermost team chat client\""
    # "SUPER CONTROL, N, exec, noctalia-shell ipc call plugin:ntfy-notifications refresh #\"Refresh ntfy\""
    "SUPER CONTROL, O, exec, dex ${desktopEntriesPath}/openWebUI.desktop #\"My own AI chat interface\""
    "SUPER CONTROL, R, exec, noctalia msg plugin noctalia/screen_recorder:service all toggle #\"Toogle screen recording\""
    "SUPER CONTROL, S, exec, signal-desktop #\"Signal encrypted messaging\""
    "SUPER CONTROL, T, exec, tsukimi #\"A simple Emby/Jellyfin Client\""
    "SUPER CONTROL, P, exec, noctalia msg panel-toggle oldirtty/color_picker:panel #\"Pick color from screen\""
  ];

  windowManagementBinds = [
    "SUPER, F, fullscreen, #\"Toggle fullscreen mode\""
    "SUPER, Q, killactive, #\"Close active window\""
    # "SUPER SHIFT, I, togglesplit, #\"Toggle split layout\""
    "SUPER SHIFT, F, togglefloating, #\"Toggle floating mode\""
  ];

  windowFocusBinds = [
    "SUPER, down, movefocus, d #\"Move focus down\""
    "SUPER, left, movefocus, l #\"Move focus left\""
    "SUPER, right, movefocus, r #\"Move focus right\""
    "SUPER, up, movefocus, u #\"Move focus up\""
  ];

  windowMovementBinds = [
    "SUPER SHIFT, down, movewindow, d #\"Move window down\""
    "SUPER SHIFT, left, movewindow, l #\"Move window left\""
    "SUPER SHIFT, right, movewindow, r #\"Move window right\""
    "SUPER SHIFT, up, movewindow, u #\"Move window up\""
  ];

  windowSwapBinds = [
    "SUPER ALT, down, swapwindow, d #\"Swap active window with window below\""
    "SUPER ALT, left, swapwindow, l #\"Swap active window with window on the left\""
    "SUPER ALT, right, swapwindow, r #\"Swap active window with window on the right\""
    "SUPER ALT, up, swapwindow, u #\"Swap active window with window above\""
  ];

  workspacesSwitchBinds = [
    "SUPER, 0, workspace, 10 #\"Switch to workspace 10\""
    "SUPER, 1, workspace, 1 #\"Switch to workspace 1\""
    "SUPER, 2, workspace, 2 #\"Switch to workspace 2\""
    "SUPER, 3, workspace, 3 #\"Switch to workspace 3\""
    "SUPER, 4, workspace, 4 #\"Switch to workspace 4\""
    "SUPER, 5, workspace, 5 #\"Switch to workspace 5\""
    "SUPER, 6, workspace, 6 #\"Switch to workspace 6\""
    "SUPER, 7, workspace, 7 #\"Switch to workspace 7\""
    "SUPER, 8, workspace, 8 #\"Switch to workspace 8\""
    "SUPER, 9, workspace, 9 #\"Switch to workspace 9\""
    "SUPER CONTROL, left, workspace, e-1 #\"Switch to previous workspace\""
    "SUPER CONTROL, right, workspace, e+1 #\"Switch to next workspace\""
    "SUPER, mouse_down, workspace, e+1 #\"Switch to next workspace with mouse\""
    "SUPER, mouse_up, workspace, e-1 #\"Switch to previous workspace with mouse\""
  ];

  workspacesSwapBinds = [
    "SUPER SHIFT, 0, movetoworkspace, 10 #\"Move active window to workspace 10\""
    "SUPER SHIFT, 1, movetoworkspace, 1 #\"Move active window to workspace 1\""
    "SUPER SHIFT, 2, movetoworkspace, 2 #\"Move active window to workspace 2\""
    "SUPER SHIFT, 3, movetoworkspace, 3 #\"Move active window to workspace 3\""
    "SUPER SHIFT, 4, movetoworkspace, 4 #\"Move active window to workspace 4\""
    "SUPER SHIFT, 5, movetoworkspace, 5 #\"Move active window to workspace 5\""
    "SUPER SHIFT, 6, movetoworkspace, 6 #\"Move active window to workspace 6\""
    "SUPER SHIFT, 7, movetoworkspace, 7 #\"Move active window to workspace 7\""
    "SUPER SHIFT, 8, movetoworkspace, 8 #\"Move active window to workspace 8\""
    "SUPER SHIFT, 9, movetoworkspace, 9 #\"Move active window to workspace 9\""
  ];

  systemMediaAndControllsBinds = [
    ",XF86AudioLowerVolume, exec, noctalia msg volume-down #\"Lower system volume\""
    ",XF86AudioMute, exec, noctalia msg volume-mute #\"Mute audio output\""
    ",XF86AudioMicMute, exec, noctalia msg mic-mute #\"Mute audio input\""
    ",XF86AudioNext, exec, noctalia msg media next #\"Next media track\""
    ",XF86AudioPlay, exec, noctalia msg media toggle #\"Play/Pause media\""
    ",XF86AudioPrev, exec, noctalia msg media previous #\"Previous media track\""
    ",XF86AudioRaiseVolume, exec, noctalia msg volume-up #\"Raise system volume\""
    ",XF86MonBrightnessDown, exec, noctalia msg brightness-down #\"Decrease screen brightness\""
    ",XF86MonBrightnessUp, exec, noctalia msg brightness-up #\"Increase screen brightness\""
  ];

  mkBlock = header: lines:
    lib.concatLines (
      ["# ${header}"]
      ++ (map (l: "bind = ${l}") lines)
    );

  fullConfig = lib.concatLines [
    ""
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
    (mkBlock "11. SYSTEM MEDIA & CONTROLS" systemMediaAndControllsBinds)
  ];
in {
  wayland.windowManager.hyprland.settings = {
    extraConfig = fullConfig;

    bindm = [
      "SUPER, mouse:272, movewindow"
      "SUPER, mouse:273, resizewindow"
    ];
  };
}
