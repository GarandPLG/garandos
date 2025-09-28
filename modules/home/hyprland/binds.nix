{ host, username, ... }:
let
  inherit (import ../../../hosts/${host}/variables.nix) browser terminal;
  desktopEntriesPath = "/home/${username}/.local/state/home-manager/gcroots/current-home/home-path/share/applications/";
in
{
  wayland.windowManager.hyprland.settings = {
    bind = [
      # =============================================================================
      # APLIKACJE - GŁÓWNE
      # =============================================================================
      "$modifier, A, exec, anki"
      # "$modifier, B, exec, btop"
      "$modifier, B, exec, bitwarden"
      "$modifier, C, exec, chromium"
      "$modifier, D, exec, discord"
      "$modifier, G, exec, gimp"
      "$modifier, M, exec, plexamp"
      "$modifier, N, exec, dex ${desktopEntriesPath}/garandcloud.desktop"
      "$modifier, O, exec, obs"
      "$modifier, Return, exec, ${terminal}"
      "$modifier, S, exec, steam"
      "$modifier, T, exec, thunar"
      "$modifier, V, exec, codium"
      "$modifier, W, exec, ${browser}"
      "$modifier, Z, exec, zeditor"

      # =============================================================================
      # APLIKACJE - Z SHIFT
      # =============================================================================
      "$modifier SHIFT, B, exec, blueman-manager"
      "$modifier SHIFT, C, exec, dex ${desktopEntriesPath}/claude.desktop"
      "$modifier SHIFT, G, exec, dex ${desktopEntriesPath}/chatgpt.desktop"
      "$modifier SHIFT, M, exec, dex ${desktopEntriesPath}/messenger.desktop"
      "$modifier SHIFT, N, exec, nextcloud"
      "$modifier SHIFT, O, exec, onlyoffice-desktopeditors"
      "$modifier SHIFT, Return, exec, rofi-launcher"
      "$modifier SHIFT, T, exec, tutanota-desktop"
      "$modifier SHIFT, W, exec, web-search"

      # =============================================================================
      # APLIKACJE - Z ALT I CONTROL
      # =============================================================================
      "$modifier ALT, M, exec, dex ${desktopEntriesPath}/mastodon.desktop"
      "$modifier ALT, S, exec, slack"
      "$modifier CONTROL, M, exec, mattermost-desktop"

      # =============================================================================
      # NARZĘDZIA SYSTEMOWE
      # =============================================================================
      "$modifier, E, exec, emopicker9000"
      "$modifier, K, exec, galculator"
      "$modifier, P, exec, hyprpicker -a"
      "$modifier ALT, K, exec, kronometer"
      "$modifier ALT, W, exec, wallsetter"
      "$modifier SHIFT, K, exec, list-keybinds"
      "$modifier SHIFT, P, exec, pavucontrol"
      "$modifier SHIFT, S, exec, screenshootin"

      # =============================================================================
      # ZARZĄDZANIE OKNAMI
      # =============================================================================
      "$modifier, Escape, exec, hyprlock"
      "$modifier, F, fullscreen,"
      "$modifier, Q, killactive,"
      "$modifier SHIFT, Escape, exit,"
      "$modifier SHIFT, I, togglesplit,"

      # =============================================================================
      # FOKUS OKIEN
      # =============================================================================
      "$modifier, down, movefocus, d"
      "$modifier, left, movefocus, l"
      "$modifier, right, movefocus, r"
      "$modifier, up, movefocus, u"

      # =============================================================================
      # PRZEMIESZCZANIE OKIEN
      # =============================================================================
      "$modifier SHIFT, down, movewindow, d"
      "$modifier SHIFT, left, movewindow, l"
      "$modifier SHIFT, right, movewindow, r"
      "$modifier SHIFT, up, movewindow, u"

      # =============================================================================
      # ZAMIANA OKIEN
      # =============================================================================
      "$modifier ALT, down, swapwindow, d"
      "$modifier ALT, left, swapwindow, l"
      "$modifier ALT, right, swapwindow, r"
      "$modifier ALT, up, swapwindow, u"

      # =============================================================================
      # WORKSPACES - PRZEŁĄCZANIE
      # =============================================================================
      "$modifier, 0, workspace, 10"
      "$modifier, 1, workspace, 1"
      "$modifier, 2, workspace, 2"
      "$modifier, 3, workspace, 3"
      "$modifier, 4, workspace, 4"
      "$modifier, 5, workspace, 5"
      "$modifier, 6, workspace, 6"
      "$modifier, 7, workspace, 7"
      "$modifier, 8, workspace, 8"
      "$modifier, 9, workspace, 9"
      "$modifier CONTROL, left, workspace, e-1"
      "$modifier CONTROL, right, workspace, e+1"
      "$modifier, mouse_down, workspace, e+1"
      "$modifier, mouse_up, workspace, e-1"

      # =============================================================================
      # WORKSPACES - PRZENOSZENIE OKIEN
      # =============================================================================
      "$modifier SHIFT, 0, movetoworkspace, 10"
      "$modifier SHIFT, 1, movetoworkspace, 1"
      "$modifier SHIFT, 2, movetoworkspace, 2"
      "$modifier SHIFT, 3, movetoworkspace, 3"
      "$modifier SHIFT, 4, movetoworkspace, 4"
      "$modifier SHIFT, 5, movetoworkspace, 5"
      "$modifier SHIFT, 6, movetoworkspace, 6"
      "$modifier SHIFT, 7, movetoworkspace, 7"
      "$modifier SHIFT, 8, movetoworkspace, 8"
      "$modifier SHIFT, 9, movetoworkspace, 9"

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
      # NIEUŻYWANE KEYBINDY (ZAKOMENTOWANE)
      # =============================================================================
      # "$modifier , R, exec, rofi-launcher"
      # "$modifier SHIFT, N, exec, swaync-client -rs"
      # "$modifier, P, pseudo,"
      # "$modifier SHIFT,F, togglefloating,"
      # "$modifier ALT,F, workspaceopt, allfloat"
      # "$modifier SHIFT, SPACE, movetoworkspace, special"
      # "$modifier, SPACE, togglespecialworkspace"
      # "ALT,Tab,cyclenext"
      # "ALT,Tab,bringactivetotop"
    ];

    bindm = [
      "$modifier, mouse:272, movewindow"
      "$modifier, mouse:273, resizewindow"
    ];
  };
}
