{
  # CPU Architecture
  # Available options: "x86_64-linux", "aarch64-linux", etc.
  system = "x86_64-linux";

  # Host Configuration
  host = "Garand-Laptop";
  username = "garand_plg";

  # GPU Profile
  # Available options: "amd", "nvidia", "nvidia-laptop", "intel", "vm"
  profile = "amd";

  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "GarandPLG";
  gitEmail = "garandplg@garandplg.com";

  # User shell
  # Availabe options: "fish", "bash"
  shell = "fish";

  # Hyprland Settings
  # Examples:
  # extraMonitorSettings = "monitor = Virtual-1,1920x1080@60,auto,1";
  # extraMonitorSettings = "monitor = HDMI-A-1,1920x1080@60,auto,1";
  # You can configure multiple monitors.
  # Inside the quotes, create a new line for each monitor.
  extraMonitorSettings = "monitor = eDP-1,1920x1080@60,auto,1";

  keyboardLayout = "pl";
  consoleKeyMap = "pl";

  location = "Żywiec, PL";

  # For Nvidia Prime support
  intelID = "PCI:1:0:0";
  nvidiaID = "PCI:0:2:0";

  # Enable NFS
  enableNFS = false;

  # Set Stylix Image
  # This will set your color palette
  # Default background
  # Add new images to ~/garandos/wallpapers
  # stylixImage = "Attack-on-Titan-1.jpg"; # og/10
  stylixImage = "Attack-on-Titan-2.jpg"; # 9/10
  # stylixImage = "Attack-on-Titan-3.jpg"; # 7.5/10
  # stylixImage = "Avatar-1.jpg"; # 5/10
  # stylixImage = "Avatar-2.jpg"; # 4/10
  # stylixImage = "Avatar-3.jpg"; # 2/10
  # stylixImage = "Avatar-4.jpg"; # 3/10
  # stylixImage = "Edge-of-Tomorrow-1.jpg"; # 2/10
  # stylixImage = "Friren-1.jpg"; # 6.5/10
  # stylixImage = "Friren-2.jpg"; # 2/10
  # stylixImage = "Friren-3.jpg"; # 4/10
  # stylixImage = "Jablon.png"; # 1/10
  # stylixImage = "Song-of-the-Sea-1.jpg"; # 3/10
  # stylixImage = "Wolfwalkers-1.jpg"; # 6/10
  # stylixImage = "Wolfwalkers-2.jpg"; # 5/10

  # Set network hostId if required (needed for zfs)
  # Otherwise leave as-is
  hostId = "7bc04e61";

  printEnable = true;
  ensureDefaultPrinter = "Brother_DCP-T510W";
  ensurePrinters = [
    {
      deviceUri = "ipp://192.168.1.106/ipp";
      location = "home";
      name = "Brother_DCP-T525W";
      model = "everywhere";
    }
    {
      deviceUri = "ipp://192.168.1.159/ipp";
      location = "home";
      name = "Brother_DCP-T510W";
      model = "everywhere";
    }
  ];
}
