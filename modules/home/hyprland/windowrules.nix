{...}: {
  wayland.windowManager.hyprland.settings.window_rule = [
    {
      match = {
        class = "resolve";
        xwayland = 1;
      };
      no_blur = true;
    }
    {
      match = {class = "[Tt]hunar|org\\.gnome\\.Nautilus|[Pp]cmanfm-qt";};
      tag = "+file-manager";
    }
    {
      match = {class = "com\\.mitchellh\\.ghostty|org\\.wezfurlong\\.wezterm|Alacritty|kitty|kitty-dropterm";};
      tag = "+terminal";
    }
    {
      match = {class = "[Ff]irefox|org\\.mozilla\\.firefox|[Ff]irefox-esr";};
      tag = "+browser";
    }
    {
      match = {class = "[Ll]ibrewolf|io\\.gitlab\\.librewolf-community";};
      tag = "+browser";
    }
    {
      match = {class = "[Gg]oogle-chrome(-beta|-dev|-unstable)?|[Cc]hromium-browser(-beta|-dev|-unstable)?";};
      tag = "+browser";
    }
    {
      match = {class = "VSCode|code|code-url-handler|codium|codium-url-handler|VSCodium|VSCodium-url-handler";};
      tag = "+projects";
    }
    {
      match = {class = "dev\\.zed\\.Zed";};
      tag = "+projects";
    }
    {
      match = {class = "[Dd]iscord|[Ww]ebCord|[Vv]esktop";};
      tag = "+im";
    }
    {
      match = {class = "[Ff]erdium";};
      tag = "+im";
    }
    {
      match = {class = "[Ss]ignal";};
      tag = "+im";
    }
    {
      match = {class = "[Ss]lack";};
      tag = "+im";
    }
    {
      match = {class = "[Tt]eams-for-linux";};
      tag = "+im";
    }
    {
      match = {class = "gamescope";};
      tag = "+games";
    }
    {
      match = {class = "steam_app_\\d+";};
      tag = "+games";
    }
    {
      match = {class = "tf_linux64";};
      tag = "+games";
    }
    {
      match = {class = "Minecraft\\*.*";};
      tag = "+games";
    }
    {
      match = {class = "[Ss]team";};
      tag = "+gamestore";
    }
    {
      match = {title = "[Ll]utris";};
      tag = "+gamestore";
    }
    {
      match = {class = "com\\.heroicgameslauncher\\.hgl";};
      tag = "+gamestore";
    }
    {
      match = {class = "org\\.prismlauncher\\.PrismLauncher";};
      tag = "+gamestore";
    }
    {
      match = {class = "gnome-disks|wihotspot(-gui)?";};
      tag = "+settings";
    }
    {
      match = {class = "[Rr]ofi";};
      tag = "+settings";
    }
    {
      match = {class = "file-roller|org\\.gnome\\.FileRoller";};
      tag = "+settings";
    }
    {
      match = {class = "nm-applet|nm-connection-editor";};
      tag = "+settings";
    }
    {
      match = {class = "pavucontrol|org\\.pulseaudio\\.pavucontrol|com\\.saivert\\.pwvucontrol";};
      tag = "+settings";
    }
    {
      match = {class = "nwg-look|qt5ct|qt6ct|[Yy]ad";};
      tag = "+settings";
    }
    {
      match = {class = "xdg-desktop-portal-gtk";};
      tag = "+settings";
    }
    {
      match = {class = "nwg-displays";};
      tag = "+settings";
    }
    {
      match = {title = "Picture-in-Picture";};
      move = "72% 7%";
    }
    {
      match = {class = "pavucontrol|org\\.pulseaudio\\.pavucontrol|com\\.saivert\\.pwvucontrol";};
      center = true;
    }
    {
      match = {
        class = "[Tt]hunar";
        title = "negative:.*[Tt]hunar.*";
      };
      center = true;
    }
    {
      match = {title = "Authentication Required";};
      center = true;
    }
    {
      match = {class = "org\\.gnome\\.Calculator";};
      center = true;
    }
    {
      match = {class = ".*";};
      idle_inhibit = "fullscreen";
    }
    {
      match = {title = ".*";};
      idle_inhibit = "fullscreen";
    }
    {
      match = {fullscreen = 1;};
      idle_inhibit = "fullscreen";
    }
    {
      match = {class = "[Ww]aypaper";};
      float = true;
    }
    {
      match = {tag = "settings*";};
      float = true;
    }
    {
      match = {title = "Picture-in-Picture";};
      float = true;
    }
    {
      match = {title = "Authentication Required";};
      float = true;
    }
    {
      match = {title = "War in Tunnels";};
      float = true;
    }
    {
      match = {
        class = "codium|codium-url-handler|VSCodium";
        title = "negative:.*(?:codium|VSCodium).*";
      };
      float = true;
    }
    {
      match = {
        class = "com\\.heroicgameslauncher\\.hgl";
        title = "negative:Heroic Games Launcher";
      };
      float = true;
    }
    {
      match = {
        class = "[Ss]team";
        title = "negative:[Ss]team";
      };
      float = true;
    }
    {
      match = {
        class = "[Tt]hunar";
        title = "negative:.*[Tt]hunar.*";
      };
      float = true;
    }
    {
      match = {class = "galculator";};
      float = true;
    }
    {
      match = {initial_title = "Add Folder to Workspace";};
      float = true;
    }
    {
      match = {initial_title = "Open Files";};
      float = true;
    }
    {
      match = {initial_title = "wants to save";};
      float = true;
    }
    {
      match = {class = "org\\.gnome\\.Calculator";};
      float = true;
    }
    {
      match = {initial_title = "Open Files";};
      size = "70% 60%";
    }
    {
      match = {initial_title = "Add Folder to Workspace";};
      size = "70% 60%";
    }
    {
      match = {tag = "settings*";};
      size = "70% 70%";
    }
    {
      match = {class = "org\\.gnome\\.Calculator";};
      size = "360 616";
    }
    {
      match = {class = "affinity\\.exe";};
      float = false;
    }
    {
      match = {class = "dev\\.zed\\.Zed";};
      float = false;
    }
    {
      match = {class = "mpv";};
      float = false;
    }
    {
      match = {class = "com-cburch-logisim-Main";};
      float = false;
    }
    {
      match = {tag = "browser*";};
      opacity = "1.0 1.0";
    }
    {
      match = {tag = "projects*";};
      opacity = "0.9 0.8";
    }
    {
      match = {tag = "im*";};
      opacity = "0.94 0.86";
    }
    {
      match = {tag = "gamestore*";};
      opacity = "0.85 0.75";
    }
    {
      match = {tag = "file-manager*";};
      opacity = "0.9 0.8";
    }
    {
      match = {tag = "terminal*";};
      opacity = "0.8 0.7";
    }
    {
      match = {tag = "settings*";};
      opacity = "0.8 0.7";
    }
    {
      match = {class = "gedit|org\\.gnome\\.TextEditor|mousepad";};
      opacity = "0.8 0.7";
    }
    {
      match = {class = "seahorse";};
      opacity = "0.9 0.8";
    }
    {
      match = {title = "Picture-in-Picture";};
      opacity = "0.95 0.75";
    }
    {
      match = {class = "org\\.gnome\\.Calculator";};
      opacity = "0.9 0.8";
    }
    {
      match = {title = "Picture-in-Picture";};
      pin = true;
    }
    {
      match = {title = "Picture-in-Picture";};
      keep_aspect_ratio = true;
    }
    {
      match = {tag = "games*";};
      no_blur = true;
    }
    {
      match = {tag = "games*";};
      fullscreen = true;
    }
  ];
}
