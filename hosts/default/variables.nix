{
  # CPU Architecture
  # Available options: "x86_64-linux", "aarch64-linux", etc.
  system = "x86_64-linux";

  # Host Configuration
  host = "My-Desktop";
  username = "my_username";

  # GPU Profile
  # Available options: "amd", "nvidia", "nvidia-laptop", "intel", "vm"
  profile = "nvidia";

  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "GarandPLG";
  gitEmail = "my@email.com";

  # Hyprland Settings
  # Examples:
  # extraMonitorSettings = "monitor = Virtual-1,1920x1080@60,auto,1";
  # extraMonitorSettings = "monitor = HDMI-A-1,1920x1080@60,auto,1";
  # You can configure multiple monitors.
  # Inside the quotes, create a new line for each monitor.
  extraMonitorSettings = "

    ";

  keyboardLayout = "pl";
  consoleKeyMap = "pl";

  location = "Warszawa, PL";

  # For Nvidia Prime support
  intelID = "PCI:1:0:0";
  nvidiaID = "PCI:0:2:0";

  # Enable NFS
  enableNFS = false;

  # Enable Printing Support
  printEnable = false;

  # Themes, waybar and animation.
  #  Only uncomment your selection
  # The others much be commented out.

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
  hostId = "5ab03f50";
}
