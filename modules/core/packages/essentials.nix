{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    mpv
    pavucontrol
    playerctl
    cmatrix
    cowsay
    sl
    fortune
    yt-dlp
    pdfium-binaries
    bitwarden-cli
    xdg-utils
    gcc
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
    smartmontools
    # Network & system utilities
    ripgrep
    wget
    socat
    ookla-speedtest
    brightnessctl
    killall
    dex
    ffmpeg
    # Desktop environment
    networkmanagerapplet
    tuigreet
    nwg-displays
    waypaper
    uwsm
    hyprpicker
    hyprshot
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
    # hyprland
    awww
    grim
    slurp
    wl-clipboard
    swappy
    ydotool
    hyprpolkitagent
    hyprland-qtutils # needed for banners and ANR messages
    # pyprland
    pyprland
  ];
}
