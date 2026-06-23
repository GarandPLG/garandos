_: {
  /*
  Container & Packaging
  */
  docker.enable = false; # Docker: container runtime and management
  virtualbox.enable = false; # VirtualBox: PC emulator
  flatpak = {
    enable = false; # Flatpak: universal packaging system for Linux
    packages = {
      sober.enable = false; # Roblox client
      warehouse.enable = false; # Flatpak manager
      flatseal.enable = false; # Flatpak permissions manager
      upscaler.enable = false; # Upscaler: Upscale and enhance images
      arduino.enable = false; # Arduino: Open-source electronics prototyping platform
      openWebUI.enable = false; # Open WebUI: Comprehensive suite for LLMs with a user-friendly WebUI
    };
  };

  /*
  Networking
  */
  tailscale.enable = false; # Tailscale: secure network for remote access

  /*
  Calendar & Contacts
  */
  calendar.enable = false; # GNOME Calendar: calendar and contacts application

  /*
  Gaming
  */
  gamemode.enable = false; # GameMode: optimizes system performance for gaming
  gamescope.enable = false; # Gamescope: micro‑compositor for games
  steam.enable = false; # Steam: platform for buying and playing games

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
    prismlauncher.enable = false; # Prism Launcher: Minecraft modded launcher
    spaceCadetPinball.enable = false; # SpaceCadet Pinball: classic pinball game
    ttySolitaire.enable = false; # TTY Solitaire: terminal‑based solitaire game
    heroic.enable = false; # Native GOG, Epic, and Amazon Games Launcher for Linux, Windows and Mac

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
    mattermost.enable = false; # Mattermost: open‑source Slack alternative
    slack.enable = false; # Slack: team communication and collaboration tool
    tutanota.enable = false; # Tutanota: secure email client
    signal.enable = false; # Signal: secure messaging app
    teams.enable = false; # Teams-for-linux: Unofficial Microsoft Teams client for Linux
    ferdium.enable = false; # Ferdium: All your services in one place built by the community
    notify.enable = false; # notify-client: Ntfy client application to receive everyday's notifications
    appImages.fluxer.enable = false; # Fluxer: Discord alternative

    /*
    Productivity / Knowledge Management
    */
    bitwarden.enable = false; # Bitwarden: password manager (desktop)
    iotas.enable = false; # Iotas: lightweight notes manager
    # appImages.logseq.enable = false; # Logseq: knowledge base and outliner

    /*
    Media & Graphics
    */
    eyeOfGnome.enable = false; # Eye of GNOME: image viewer
    switcheroo.enable = false; # Switcheroo: file conversion tool
    freetube.enable = false; # FreeTube: privacy‑friendly YouTube client
    gimp.enable = false; # GIMP: GNU Image Manipulation Program
    kdenlive.enable = false; # Kdenlive: video editing software
    pixieditor.enable = false; # Pixieditor: Universal editor for all your 2D needs
    plex.enable = false; # Plex: media player and server client
    jellyfin.enable = false; # Jellyfin: foss media player
    appImages.losslesscut.enable = false; # Losslesscut: Swiss army knife of lossless video/audio editing

    /*
    Utilities / Misc
    */
    eddieAirVPN.enable = false; # Eddie AirVPN: VPN client
    gnomeCalculator.enable = false; # gnomeCalculator: simple calculator
    gedit.enable = false; # Gedit: GNOME text editor
    winboat.enable = false; # Winboat: Windows remote desktop via RDP
    adb.enable = false; # ADB: Android SDK platform tools
  };
}
