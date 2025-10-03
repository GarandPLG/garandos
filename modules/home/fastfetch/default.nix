{
  programs.fastfetch = {
    enable = true;

    settings = {
      display = {
        color = {
          keys = "35";
          output = "90";
        };
        separator = " ➜  ";
      };

      logo = {
        source = ./garandos.png;
        type = "kitty-direct";
        height = 15;
        width = 30;
        padding = {
          top = 3;
          left = 3;
        };
      };

      modules = [
        "break"
        {
          type = "custom";
          format = "┌─────────────────────────────────Hardware────────────────────────────────┐";
        }
        {
          type = "host";
          format = "{5} {1} Type {2}";
          key = "│  PC";
          keyColor = "33";
        }
        {
          type = "cpu";
          format = "{1} ({3}) @ {7} GHz";
          key = "│ ├  ";
          keyColor = "33";
        }
        {
          type = "gpu";
          format = "{1} {2} @ {12} GHz";
          key = "│ ├  ";
          keyColor = "33";
        }
        {
          type = "memory";
          key = "│ ├ 󰑭 ";
          keyColor = "33";
        }
        {
          type = "swap";
          key = "│ ├  ";
          keyColor = "33";
        }
        {
          type = "disk";
          key = "│ ├ 󰋊 ";
          keyColor = "33";
        }
        {
          type = "monitor";
          key = "│ └  ";
          keyColor = "33";
        }
        {
          type = "custom";
          format = "└──────────────────────────────────────────────────────────────────────────┘";
        }

        "break"
        {
          type = "custom";
          format = "┌─────────────────────────────────Software─────────────────────────────────┐";
        }
        {
          type = "os";
          key = "│  OS";
          keyColor = "31";
        }
        {
          type = "command";
          key = "│ ├  ";
          keyColor = "31";
          text = "echo GarandOS v$" + "{GARANDOS_VERSION}";
        }
        {
          type = "kernel";
          key = "│ ├  ";
          keyColor = "31";
        }
        {
          type = "packages";
          key = "│ ├ 󰏖 ";
          keyColor = "31";
        }
        {
          type = "shell";
          key = "│ └  ";
          keyColor = "31";
        }
        {
          type = "wm";
          key = "│  WM";
          keyColor = "32";
        }
        {
          type = "wmtheme";
          key = "│ ├ 󰉼 ";
          keyColor = "32";
        }
        {
          type = "icons";
          key = "│ ├ 󰀻 ";
          keyColor = "32";
        }
        {
          type = "cursor";
          key = "│ ├  ";
          keyColor = "32";
        }
        {
          type = "terminal";
          key = "│ ├  ";
          keyColor = "32";
        }
        {
          type = "terminalfont";
          key = "│ └  ";
          keyColor = "32";
        }
        {
          type = "custom";
          format = "└──────────────────────────────────────────────────────────────────────────┘";
        }

        "break"
        {
          type = "custom";
          format = "┌───────────────────────────────Age / Uptime───────────────────────────────┐";
        }
        {
          type = "command";
          key = "│  IN";
          text =
            #bash
            ''
              birth_install=$(stat -c %W /)
              if [ "$birth_install" -gt 0 ]; then
                echo "Installed $(date -d @"$birth_install" +"%Y-%m-%d")"
              else
                echo "Installation date unknown"
              fi
            '';
        }
        {
          type = "command";
          key = "│ ├  ";
          text =
            #bash
            ''
              birth_install=$(stat -c %W /)
              current=$(date +%s)
              delta=$((current - birth_install))
              delta_days=$((delta / 86400))
              echo $delta_days days
            '';
        }
        {
          type = "uptime";
          key = "│ └  ";
        }
        {
          type = "custom";
          format = "└──────────────────────────────────────────────────────────────────────────┘";
        }
        "break"
      ];
    };
  };
}
