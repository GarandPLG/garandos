_: {
  /*
  Container & Packaging
  */
  docker.enable = true; # Docker: container runtime and management
  virtualbox.enable = false; # VirtualBox: PC emulator
  flatpak = {
    enable = true; # Flatpak: universal packaging system for Linux
    packages = {
      sober.enable = false; # Roblox client
      warehouse.enable = true; # Flatpak manager
      flatseal.enable = true; # Flatpak permissions manager
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

  packages = {
    /*
    Container & Packaging
    */
    distrobox.enable = false; # Distrobox: containerized development environments
    lazydocker.enable = false; # Lazydocker: simple TUI for Docker
    bottles.enable = false; # Bottles: Easy-to-use wineprefix manager

    /*
    Gaming
    */
    prismlauncher.enable = true; # Prism Launcher: Minecraft modded launcher
    spaceCadetPinball.enable = true; # SpaceCadet Pinball: classic pinball game
    ttySolitaire.enable = true; # TTY Solitaire: terminal‑based solitaire game
    heroic.enable = false; # Native GOG, Epic, and Amazon Games Launcher for Linux, Windows and Mac

    /*
    Development Tools
    */
    exercism.enable = false; # Exercism: coding practice platform
    lazygit.enable = false; # Lazygit: simple TUI for Git
    opencode.enable = false; # OpenCode: tools for coding and development
    jan.enable = true; # Jan: AI chat UI
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
    notify.enable = true; # notify-client: Ntfy client application to receive everyday's notifications

    /*
    Productivity / Knowledge Management
    */
    bitwarden.enable = false; # Bitwarden: password manager (desktop)
    iotas.enable = true; # Iotas: lightweight notes manager
    logseq.enable = false; # Logseq: knowledge base and outliner

    /*
    Media & Graphics
    */
    affinity.enable = true; # Affinity: professional graphics suite
    eyeOfGnome.enable = true; # Eye of GNOME: image viewer
    freetube.enable = false; # FreeTube: privacy‑friendly YouTube client
    gimp.enable = false; # GIMP: GNU Image Manipulation Program
    kdenlive.enable = false; # Kdenlive: video editing software
    pixieditor.enable = true; # Pixieditor: Universal editor for all your 2D needs
    plex.enable = true; # Plex: media player and server client

    /*
    Utilities / Misc
    */
    eddieAirVPN.enable = true; # Eddie AirVPN: VPN client
    gnomeCalculator.enable = true; # gnomeCalculator: simple calculator
    gedit.enable = true; # Gedit: GNOME text editor
    winboat.enable = false; # Winboat: Windows remote desktop via RDP
    adb.enable = false; # ADB: Android SDK platform tools
  };
}
