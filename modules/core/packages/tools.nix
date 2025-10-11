{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # File management
    trash-cli
    file-roller
    unrar
    unzip
    # System monitoring & info
    inxi
    lm_sensors
    lshw
    pciutils
    usbutils
    glxinfo
    nix-output-monitor
    nvd
    onefetch
    # Disk utilities
    duf
    dysk
    ncdu
    # Network & system utilities
    ripgrep
    wget
    socat
    ookla-speedtest
    brightnessctl
    killall
    dex
    # Desktop environment
    networkmanagerapplet
    tuigreet
    nwg-displays
    waypaper
    uwsm
    hyprpicker
    cliphist
    # Development utilities
    pkg-config
    appimage-run
    libnotify
    v4l-utils
    # kronometer
    # Language dicts for Iotas
    hunspell
    hunspellDicts.pl_PL
    hunspellDicts.en_US
  ];
}
