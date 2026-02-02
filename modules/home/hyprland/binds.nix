{
  host,
  username,
  ...
}: let
  inherit (import ../../../hosts/${host}/variables.nix) browser terminal;
  desktopEntriesPath = "/home/${username}/.local/state/home-manager/gcroots/current-home/home-path/share/applications/";
in {
  wayland.windowManager.hyprland.settings = {
    bind = [
      # =============================================================================
      # APLIKACJE - GŁÓWNE
      # =============================================================================
      "SUPER, A, exec, anki"
      "SUPER, B, exec, bitwarden"
      "SUPER, C, exec, chromium"
      "SUPER, D, exec, vesktop"
      "SUPER, G, exec, affinity-v3"
      "SUPER, I, exec, iotas"
      "SUPER, J, exec, Jan"
      "SUPER, L, exec, logseq"
      "SUPER, M, exec, plexamp"
      "SUPER, N, exec, dex ${desktopEntriesPath}/garandcloud.desktop"
      "SUPER, O, exec, obs"
      "SUPER, P, exec, plex-desktop"
      "SUPER, Return, exec, ${terminal}"
      "SUPER, S, exec, steam"
      "SUPER, T, exec, thunar"
      "SUPER, V, exec, codium"
      "SUPER, W, exec, ${browser}"
      "SUPER, Z, exec, zeditor"

      # =============================================================================
      # APLIKACJE - Z SHIFT
      # =============================================================================
      "SUPER SHIFT, B, exec, blueman-manager"
      "SUPER SHIFT, C, exec, dex ${desktopEntriesPath}/claude.desktop"
      "SUPER SHIFT, G, exec, dex ${desktopEntriesPath}/chatgpt.desktop"
      "SUPER SHIFT, M, exec, dex ${desktopEntriesPath}/messenger.desktop"
      "SUPER SHIFT, N, exec, nextcloud"
      "SUPER SHIFT, O, exec, onlyoffice-desktopeditors"
      # "SUPER SHIFT, Return, exec, rofi-launcher"
      "SUPER SHIFT, T, exec, tutanota-desktop"
      # "SUPER SHIFT, W, exec, web-search"

      # =============================================================================
      # APLIKACJE - Z ALT
      # =============================================================================
      "SUPER ALT, G, exec, dex ${desktopEntriesPath}/glance.desktop"
      "SUPER ALT, M, exec, dex ${desktopEntriesPath}/mastodon.desktop"
      "SUPER ALT, S, exec, slack"
      "SUPER ALT, T, exec, gedit"

      # =============================================================================
      # APLIKACJE - Z CONTROL
      # =============================================================================
      "SUPER CONTROL, G, exec, gimp"
      "SUPER CONTROL, M, exec, mattermost-desktop"
      "SUPER CONTROL, S, exec, signal-desktop"

      # =============================================================================
      # NARZĘDZIA SYSTEMOWE
      # =============================================================================
      "SUPER, E, exec, emopicker9000"
      "SUPER, K, exec, galculator"
      "SUPER ALT, W, exec, wallsetter"
      "SUPER CONTROL, P, exec, hyprpicker -a"
      "SUPER SHIFT, K, exec, list-keybinds"
      "SUPER SHIFT, P, exec, pavucontrol"
      "SUPER SHIFT, S, exec, screenshootin"

      # =============================================================================
      # ZARZĄDZANIE OKNAMI
      # =============================================================================
      "SUPER, Escape, exec, hyprlock"
      "SUPER, F, fullscreen,"
      "SUPER, Q, killactive,"
      "SUPER CONTROL, Escape, exec, wlogout"
      "SUPER SHIFT, Escape, exit,"
      "SUPER SHIFT, I, togglesplit,"
      "SUPER SHIFT, F, togglefloating,"

      # =============================================================================
      # FOKUS OKIEN
      # =============================================================================
      "SUPER, down, movefocus, d"
      "SUPER, left, movefocus, l"
      "SUPER, right, movefocus, r"
      "SUPER, up, movefocus, u"

      # =============================================================================
      # PRZEMIESZCZANIE OKIEN
      # =============================================================================
      "SUPER SHIFT, down, movewindow, d"
      "SUPER SHIFT, left, movewindow, l"
      "SUPER SHIFT, right, movewindow, r"
      "SUPER SHIFT, up, movewindow, u"

      # =============================================================================
      # ZAMIANA OKIEN
      # =============================================================================
      "SUPER ALT, down, swapwindow, d"
      "SUPER ALT, left, swapwindow, l"
      "SUPER ALT, right, swapwindow, r"
      "SUPER ALT, up, swapwindow, u"

      # =============================================================================
      # WORKSPACES - PRZEŁĄCZANIE
      # =============================================================================
      "SUPER, 0, workspace, 10"
      "SUPER, 1, workspace, 1"
      "SUPER, 2, workspace, 2"
      "SUPER, 3, workspace, 3"
      "SUPER, 4, workspace, 4"
      "SUPER, 5, workspace, 5"
      "SUPER, 6, workspace, 6"
      "SUPER, 7, workspace, 7"
      "SUPER, 8, workspace, 8"
      "SUPER, 9, workspace, 9"
      "SUPER CONTROL, left, workspace, e-1"
      "SUPER CONTROL, right, workspace, e+1"
      "SUPER, mouse_down, workspace, e+1"
      "SUPER, mouse_up, workspace, e-1"

      # =============================================================================
      # WORKSPACES - PRZENOSZENIE OKIEN
      # =============================================================================
      "SUPER SHIFT, 0, movetoworkspace, 10"
      "SUPER SHIFT, 1, movetoworkspace, 1"
      "SUPER SHIFT, 2, movetoworkspace, 2"
      "SUPER SHIFT, 3, movetoworkspace, 3"
      "SUPER SHIFT, 4, movetoworkspace, 4"
      "SUPER SHIFT, 5, movetoworkspace, 5"
      "SUPER SHIFT, 6, movetoworkspace, 6"
      "SUPER SHIFT, 7, movetoworkspace, 7"
      "SUPER SHIFT, 8, movetoworkspace, 8"
      "SUPER SHIFT, 9, movetoworkspace, 9"

      # =============================================================================
      # MEDIA I KONTROLKI SYSTEMOWE
      # =============================================================================
      ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioNext, exec, playerctl next"
      ",XF86AudioPause, exec, playerctl play-pause"
      ",XF86AudioPlay, exec, playerctl play-pause"
      ",XF86AudioPrev, exec, playerctl previous"
      ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86MonBrightnessDown, exec, brightnessctl set 5%-"
      ",XF86MonBrightnessUp, exec, brightnessctl set +5%"

      # =============================================================================
      # NOCTALIA SHELL
      # =============================================================================
      "SUPER SHIFT, Return, exec, noctalia-shell ipc call launcher toggle"
      # "SUPER, M, Noctalia Notifications, exec, noctalia-shell ipc call notifications toggleHistory"
      "SUPER SHIFT, V, exec, noctalia-shell ipc call launcher clipboard"
      "SUPER ALT, P, exec, noctalia-shell ipc call settings toggle"
      "SUPER ALT, L, exec, noctalia-shell ipc call sessionMenu lockAndSuspend"
      "SUPER SHIFT, W, exec, noctalia-shell ipc call wallpaper toggle"
      "SUPER, X, exec, noctalia-shell ipc call sessionMenu toggle"
      "SUPER ALT, C, exec, noctalia-shell ipc call controlCenter toggle"
      "SUPER CTRL, R, exec, noctalia-shell ipc call screenRecorder toggle"
      "SUPER SHIFT, R, exec, restart.noctalia"

      # =============================================================================
      # NIEUŻYWANE KEYBINDY
      # =============================================================================
      # "SUPER SHIFT, N, exec, swaync-client -rs"
      # "SUPER, P, pseudo,"
      # "SUPER ALT,F, workspaceopt, allfloat"
      # "SUPER SHIFT, SPACE, movetoworkspace, special"
      # "SUPER, SPACE, togglespecialworkspace"
      # "ALT,Tab,cyclenext"
      # "ALT,Tab,bringactivetotop"
    ];

    bindm = [
      "SUPER, mouse:272, movewindow"
      "SUPER, mouse:273, resizewindow"
    ];
  };
}
