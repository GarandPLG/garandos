{
  # CPU Architecture
  # Available options: "x86_64-linux", "aarch64-linux", etc.
  system = "x86_64-linux";

  # Host Configuration
  host = "Garand-Desktop";
  username = "garand_plg";

  # GPU Profile
  # Available options: "amd", "nvidia", "nvidia-laptop", "intel", "vm"
  profile = "nvidia";

  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "GarandPLG";
  gitEmail = "garandplg@garandplg.com";

  # Hyprland Settings
  # Examples:
  # extraMonitorSettings = "monitor = Virtual-1,1920x1080@60,auto,1";
  # extraMonitorSettings = "monitor = HDMI-A-1,1920x1080@60,auto,1";
  # You can configure multiple monitors.
  # Inside the quotes, create a new line for each monitor.
  extraMonitorSettings = "monitor = DP-1,1920x1080@144,auto,1";

  keyboardLayout = "pl";
  consoleKeyMap = "pl";

  location = "Żywiec, PL";

  # For Nvidia Prime support
  intelID = "PCI:1:0:0";
  nvidiaID = "PCI:0:2:0";

  # Enable NFS
  enableNFS = false;

  # Enable Printing Support
  printEnable = true;

  # Set Stylix Image
  # This will set your color palette
  # Default background
  # Add new images to ~/garandos/wallpapers
  stylixImage = "Attack-on-Titan-1.jpg";
  # stylixImage = "Attack-on-Titan-2.jpg";
  # stylixImage = "Attack-on-Titan-3.jpg";
  # stylixImage = "Avatar-1.jpg";
  # stylixImage = "Avatar-2.jpg";
  # stylixImage = "Avatar-3.png";
  # stylixImage = "Avatar-4.jpg";
  # stylixImage = "Edge-of-Tomorrow-1.jpg";
  # stylixImage = "Friren-1.jpg";
  # stylixImage = "Friren-2.jpg";
  # stylixImage = "Friren-3.jpg";
  # stylixImage = "Jablon.png";
  # stylixImage = "Song-of-the-Sea-1.jpg";
  # stylixImage = "Wolfwalkers-1.jpg";
  # stylixImage = "Wolfwalkers-2.jpg";

  # Set network hostId if required (needed for zfs)
  # Otherwise leave as-is
  hostId = "5ab03f50";
}
