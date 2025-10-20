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

  # Waybar Settings
  clock24h = true;

  # Program Options
  # Set Default Browser (google-chrome-stable for google-chrome)
  # This does NOT install your browser
  # You need to install it by adding it to the `packages.nix`
  # or as a flatpak
  browser = "librewolf";

  # Setting it here does not enable it. Kitty is installed by default
  terminal = "kitty"; # Set Default System Terminal

  keyboardLayout = "pl";
  consoleKeyMap = "pl";

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
  stylixImage = ../../wallpapers/attack-on-titan-mikasa-ackerman.jpg;
  #stylixImage = ../../wallpapers/DW_Pacts.jpg;
  #stylixImage = ../../wallpapers/edward-elric-fullmetal-alchemist.jpg;
  #stylixImage = ../../wallpapers/fire-nation.jpg;
  #stylixImage = ../../wallpapers/four-elements.jpg;
  # stylixImage = ../../wallpapers/fullmetal-alchemist-5120x2880-10399.png;
  #stylixImage = ../../wallpapers/Grounded_Wallpaper_4K.jpg;
  #stylixImage = ../../wallpapers/jablon.jpg;
  #stylixImage = ../../wallpapers/rammstein-log-two.jpg;
  #stylixImage = ../../wallpapers/rammstein-log-one.jpg;
  #stylixImage = ../../wallpapers/rammstein-log-three.jpg;
  #stylixImage = ../../wallpapers/rammstein-one.jpg;

  # Set Waybar
  #  Available Options:
  waybarChoice = ../../modules/home/waybar/waybar-curved.nix;
  #waybarChoice = ../../modules/home/waybar/waybar-ddubs.nix;
  #waybarChoice = ../../modules/home/waybar/waybar-ddubs-2.nix;
  #waybarChoice = ../../modules/home/waybar/waybar-simple.nix;
  # Throwback to GarandOS v1.0
  #waybarChoice = ../../modules/home/waybar/waybar-jerry.nix;
  # Very colorful and bright colors
  #waybarChoice = ../../modules/home/waybar/waybar-nekodyke.nix;
  # DWM styled waybars from Matt at TheLinuxCast
  #waybarChoice = ../../modules/home/waybar/waybar-dwm.nix;
  #waybarChoice = ../../modules/home/waybar/waybar-dwm-2.nix;

  # Set Animation style
  # Available options are:
  # animations-def.nix  (default)
  # animations-end4.nix (end-4 project very fluid)
  # animations-dynamic.nix (ml4w project)
  # animations-moving.nix (ml4w project)
  # animChoice = ../../modules/home/hyprland/animations-def.nix;
  animChoice = ../../modules/home/hyprland/animations-end4.nix;
  #animChoice = ../../modules/home/hyprland/animations-dynamic.nix;
  #animChoice = ../../modules/home/hyprland/animations-moving.nix;

  # Set network hostId if required (needed for zfs)
  # Otherwise leave as-is
  hostId = "5ab03f50";
}
