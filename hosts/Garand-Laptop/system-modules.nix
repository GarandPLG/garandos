_: {
  /*
  Container & Packaging
  */
  docker.enable = true; # Docker: container runtime and management
  virtualbox.enable = false; # VirtualBox: PC emulator
  virualization.enable = false; # GUI application for managing local and remote virtual machines through libvirt
  flatpak = {
    enable = true; # Flatpak: universal packaging system for Linux
    packages = {
      sober.enable = false; # Roblox client
      warehouse.enable = true; # Flatpak manager
      flatseal.enable = true; # Flatpak permissions manager
      upscaler.enable = true; # Upscaler: Upscale and enhance images
      arduino.enable = false; # Arduino: Open-source electronics prototyping platform
    };
  };

  /*
  Networking
  */
  tailscale.enable = true; # Tailscale: secure network for remote access

  /*
  Calendar & Contacts
  */
  calendar.enable = true; # GNOME Calendar: calendar and contacts application

  /*
  Gaming
  */
  gamemode.enable = true; # GameMode: optimizes system performance for gaming
  gamescope.enable = false; # Gamescope: micro‑compositor for games
  steam.enable = true; # Steam: platform for buying and playing games

  /*
  Media & Graphics
  */
  affinity.enable = false; # Affinity: professional graphics suite

  /*
  Utilities / Misc
  */
  ventoy.enable = false; # Ventoy: New Bootable USB Solution with GUI support

  packages = {
    /*
    Web browsers
    */
    appImages.helium.enable = true; # Helium: Better ungoogled-chromium

    /*
    Container & Packaging
    */
    distrobox.enable = false; # Distrobox: containerized development environments
    lazydocker.enable = false; # Lazydocker: simple TUI for Docker
    bottles.enable = false; # Bottles: Easy-to-use wineprefix manager
    boxes.enable = false; # Gnome-Boxes: virtual machine manager

    /*
    Gaming
    */
    spaceCadetPinball.enable = true; # SpaceCadet Pinball: classic pinball game
    ttySolitaire.enable = true; # TTY Solitaire: terminal‑based solitaire game
    heroic.enable = false; # Native GOG, Epic, and Amazon Games Launcher for Linux, Windows and Mac
    kmines.enable = true; # KMines: KMines is the classic Minesweeper game

    /*
    Development Tools
    */
    exercism.enable = false; # Exercism: coding practice platform
    lazygit.enable = false; # Lazygit: simple TUI for Git
    jan.enable = false; # Jan: AI chat UI
    logisim-evolution.enable = false; # Logisim-Evolution: Digital logic designer and simulator

    /*
    Communication & Collaboration
    */
    mattermost.enable = true; # Mattermost: open‑source Slack alternative
    slack.enable = false; # Slack: team communication and collaboration tool
    tutanota.enable = true; # Tutanota: secure email client
    signal.enable = true; # Signal: secure messaging app
    teams.enable = true; # Teams-for-linux: Unofficial Microsoft Teams client for Linux
    ferdium.enable = false; # Ferdium: All your services in one place built by the community
    notify.enable = false; # notify-client: Ntfy client application to receive everyday's notifications
    appImages.fluxer.enable = false; # Fluxer: Discord alternative

    /*
    Productivity / Knowledge Management
    */
    iotas.enable = true; # Iotas: lightweight notes manager
    # appImages.logseq.enable = false; # Logseq: knowledge base and outliner

    /*
    Media & Graphics
    */
    eyeOfGnome.enable = true; # Eye of GNOME: image viewer
    switcheroo.enable = false; # Switcheroo: file conversion tool
    freetube.enable = false; # FreeTube: privacy‑friendly YouTube client
    gimp.enable = false; # GIMP: GNU Image Manipulation Program
    kdenlive.enable = false; # Kdenlive: video editing software
    pixieditor.enable = true; # Pixieditor: Universal editor for all your 2D needs
    plex.enable = false; # Plex: media player and server client
    jellyfin.enable = true; # Jellyfin: foss media player
    appImages.losslesscut.enable = false; # Losslesscut: Swiss army knife of lossless video/audio editing

    /*
    Utilities / Misc
    */
    eddieAirVPN.enable = true; # Eddie AirVPN: VPN client
    gnomeCalculator.enable = true; # gnomeCalculator: simple calculator
    gedit.enable = true; # Gedit: GNOME text editor
    winboat.enable = false; # Winboat: Windows remote desktop via RDP
    adb.enable = false; # ADB: Android SDK platform tools
    simpleScan.enable = true; # simple-scan: Simple scanning utility
  };
}
