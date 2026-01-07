_: {
  wayland.windowManager.hyprland.settings.windowrule = [
    # XWayland specific rules
    #"noblur, xwayland:1" # Helps prevent odd borders/shadows for xwayland apps
    # downside it can impact other xwayland apps
    # This rule is a template for a more targeted approach
    "no_blur on, match:class resolve, match:xwayland 1" # Window rule for just resolve

    # Application tags
    "tag +file-manager, match:class [Tt]hunar|org\.gnome\.Nautilus|[Pp]cmanfm-qt"
    "tag +terminal, match:class com\.mitchellh\.ghostty|org\.wezfurlong\.wezterm|Alacritty|kitty|kitty-dropterm"
    "tag +browser, match:class [Ff]irefox|org\.mozilla\.firefox|[Ff]irefox-esr"
    "tag +browser, match:class [Ll]ibrewolf|io\.gitlab\.librewolf-community"
    "tag +browser, match:class [Gg]oogle-chrome(-beta|-dev|-unstable)?|[Cc]hromium-browser(-beta|-dev|-unstable)?"
    "tag +projects, match:class VSCode|code|code-url-handler|codium|codium-url-handler|VSCodium|VSCodium-url-handler"
    "tag +projects, match:class dev\.zed\.Zed"
    "tag +im, match:class [Dd]iscord|[Ww]ebCord|[Vv]esktop"
    "tag +im, match:class [Ff]erdium"
    "tag +im, match:class [Ss]ignal"
    "tag +im, match:class [Ss]lack"
    "tag +im, match:class [Tt]eams-for-linux"
    "tag +games, match:class gamescope"
    "tag +games, match:class ?:steam_app_\d+"
    "tag +games, match:class tf_linux64"
    "tag +gamestore, match:class [Ss]team"
    "tag +gamestore, match:title [Ll]utris"
    "tag +gamestore, match:class com\.heroicgameslauncher\.hgl"
    "tag +settings, match:class gnome-disks|wihotspot(-gui)?"
    "tag +settings, match:class [Rr]ofi"
    "tag +settings, match:class file-roller|org\.gnome\.FileRoller"
    "tag +settings, match:class nm-applet|nm-connection-editor|blueman-manager"
    "tag +settings, match:class pavucontrol|org\.pulseaudio\.pavucontrol|com\.saivert\.pwvucontrol"
    "tag +settings, match:class nwg-look|qt5ct|qt6ct|[Yy]ad"
    "tag +settings, match:class xdg-desktop-portal-gtk"
    "tag +settings, match:class ?:blueman-manager-wrapped"
    "tag +settings, match:class nwg-displays"

    # Position and movement rules
    "move 72% 7%, match:title Picture-in-Picture"
    "center on, match:class pavucontrol|org\.pulseaudio\.pavucontrol|com\.saivert\.pwvucontrol"
    "center on, match:class [Tt]hunar, match:title negative:.*[Tt]hunar.*"
    "center on, match:title Authentication Required"

    # Idle inhibit rules
    "idle_inhibit fullscreen, match:class .*"
    "idle_inhibit fullscreen, match:title .*"
    "idle_inhibit fullscreen, match:fullscreen 1"

    # Float rules
    "float on, match:class [Ww]aypaper"
    "float on, match:tag settings*"
    "float on, match:title Picture-in-Picture"
    "float on, match:class mpv"
    "float on, match:title Authentication Required"
    "float on, match:title War in Tunnels"
    "float on, match:class codium|codium-url-handler|VSCodium, match:title negative:.*(?:codium|VSCodium).*"
    "float on, match:class com\.heroicgameslauncher\.hgl, match:title negative Heroic Games Launcher"
    "float on, match:class [Ss]team, match:title negative:[Ss]team"
    "float on, match:class [Tt]hunar, match:title negative:.*[Tt]hunar.*"
    "float on, match:class galculator"
    "float on, match:initial_title Add Folder to Workspace"
    "float on, match:initial_title Open Files"
    "float on, match:initial_title wants to save"

    # Size rules
    "size 70% 60%, match:initial_title Open Files"
    "size 70% 60%, match:initial_title Add Folder to Workspace"
    "size 70% 70%, match:tag settings*"
    "size 70% 70%, match:class mpv"

    # Tile rules
    "tile on, match:class affinity\.exe"
    "tile on, match:class dev\.zed\.Zed"

    # Opacity rules
    "opacity 1.0 1.0, match:tag browser*"
    "opacity 0.9 0.8, match:tag projects*"
    "opacity 0.94 0.86, match:tag im*"
    "opacity 0.9 0.8, match:tag file-manager*"
    "opacity 0.8 0.7, match:tag terminal*"
    "opacity 0.8 0.7, match:tag settings*"
    "opacity 0.8 0.7, match:class gedit|org\.gnome\.TextEditor|mousepad"
    "opacity 0.9 0.8, match:class seahorse # gnome-keyring gui"
    "opacity 0.95 0.75, match:title Picture-in-Picture"

    # Picture-in-Picture specific rules
    "pin on, match:title Picture-in-Picture"
    "keep_aspect_ratio on, match:title Picture-in-Picture"

    # Games specific rules
    "no_blur on, match:tag games*"
    "fullscreen on, match:tag games*"
  ];
}
