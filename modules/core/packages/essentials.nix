{
  pkgs,
  inputs,
  system,
  ...
}: {
  environment.systemPackages = with pkgs; [
    mpv
    pavucontrol
    playerctl
    cmatrix
    cowsay
    sl
    fortune
    # File management
    trash-cli
    file-roller
    unrar
    unzip
    p7zip
    # System monitoring & info
    inxi
    lm_sensors
    lshw
    pciutils
    usbutils
    mesa-demos
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
    tasktimer
    # Language dicts for Iotas
    hunspell
    hunspellDicts.pl_PL
    hunspellDicts.en_US
    # Noctalia Shell Dependencies
    matugen
    app2unit
    gpu-screen-recorder
    power-profiles-daemon
  ];
}
