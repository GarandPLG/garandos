_: {
  flake.nixosModules.variables = {
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
    enableNFS = true;

    # Enable Printing Support
    printEnable = true;

    # Set Stylix Image
    # This will set your color palette
    # Default background
    # Add new images to ~/garandos/wallpapers
    stylixImage = "attack-on-titan-mikasa-ackerman.jpg";
    #stylixImage = "DW_Pacts.jpg";
    #stylixImage = "edward-elric-fullmetal-alchemist.jpg";
    #stylixImage = "fire-nation.jpg";
    #stylixImage = "four-elements.jpg";
    #stylixImage = "fullmetal-alchemist-5120x2880-10399.png";
    #stylixImage = "Grounded_Wallpaper_4K.jpg";
    #stylixImage = "jablon.jpg";
    #stylixImage = "rammstein-log-two.jpg";
    #stylixImage = "rammstein-logo-one.jpg";
    #stylixImage = "rammstein-logo-three.jpg";
    #stylixImage = "rammstein-one.jpg";
    #stylixImage = "1346530.jpeg";

    # Set network hostId if required (needed for zfs)
    # Otherwise leave as-is
    hostId = "5ab03f50";
  };
}
