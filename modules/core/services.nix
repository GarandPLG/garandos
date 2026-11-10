{
  profile,
  pkgs,
  ...
}: {
  # Services to start
  services = {
    libinput.enable = true; # Input Handling
    fstrim.enable = true; # SSD Optimizer
    gvfs.enable = true; # For Mounting USB & More
    openssh = {
      enable = true; # Enable SSH
      settings = {
        X11Forwarding = true;
        PermitRootLogin = "no"; # Prevent root from SSH login
        PasswordAuthentication = true; # Users can SSH using kb and password
        KbdInteractiveAuthentication = true;
      };
      ports = [22];
    };
    tumbler.enable = true; # Image/video preview
    gnome.gnome-keyring.enable = true;
    smartd = {
      enable =
        if profile == "vm"
        then false
        else true;
      autodetect = true;
    };
    pipewire = {
      enable = true;
      pulse.enable = true;
      # jack.enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      extraConfig = {
        pipewire."92-low-latency" = {
          "context.properties" = {
            "default.clock.rate" = 48000;
            "default.clock.quantum" = 256;
            "default.clock.min-quantum" = 256;
            "default.clock.max-quantum" = 256;
          };
        };
        pipewire-pulse."92-low-latency" = {
          context.modules = [
            {
              name = "libpipewire-module-protocol-pulse";
              args.pulse = {
                default.req = "256/48000";
                min = {
                  req = "256/48000";
                  quantum = "256/48000";
                };
                max = {
                  req = "256/48000";
                  quantum = "256/48000";
                };
              };
            }
          ];
        };
      };
    };
    upower = {
      enable = true;
      package = pkgs.upower;
    };
    power-profiles-daemon = {
      enable = true;
      package = pkgs.power-profiles-daemon;
    };
  };
}
