_: {
  /*
  Container & Packaging
  */
  docker.enable = true; # Docker: container runtime and management

  distrobox.enable = false; # Distrobox: containerized development environments

  flatpak = {
    enable = true; # Flatpak: universal packaging system for Linux

    packages = {
      sober = true; # Enable Roblox Client
      warehouse = true; # Enable Flatpak manager
      flatseal = true; # Enable Flatpak permissions manager
    };
  };

  lazydocker.enable = false; # Lazydocker: simple TUI for Docker

  /*
  Gaming
  */
  gamemode.enable = true; # GameMode: optimizes system performance for gaming

  gamescope.enable = false; # Gamescope: micro-compositor for games

  prismlauncher.enable = false; # Prism Launcher: Minecraft modded launcher

  steam.enable = true; # Steam: platform for buying and playing games

  spaceCadetPinball.enable = true; # SpaceCadet Pinball: classic pinball game

  ttySolitaire.enable = true; # TTY Solitaire: terminal based solitaire game

  /*
  Development Tools
  */
  exercism.enable = true; # Exercism: coding practice platform

  gedit.enable = false; # Gedit: GNOME text editor

  lazygit.enable = false; # Lazygit: simple TUI for git

  opencode.enable = true; # OpenCode: tools for coding and development

  jan.enable = true; # Jan: AI chat UI

  /*
  Communication & Collaboration
  */
  mattermost.enable = true; # Mattermost: open-source Slack alternative

  slack.enable = true; # Slack: team communication and collaboration tool

  tutanota.enable = true; # Tutanota: secure email client

  /*
  Productivity / Knowledge Management
  */
  bitwarden.enable = false; # Bitwarden: password manager (desktop)

  iotas.enable = true; # Iotas: lightweight notes manager

  logseq.enable = false; # Logseq: knowledge base and outliner

  /*
  Media & Graphics
  */
  affinity.enable = false; # Affinity: professional graphics suite

  eyeOfGnome.enable = true; # Eye of GNOME: image viewer

  freetube.enable = false; # FreeTube: privacy‑friendly YouTube client

  gimp.enable = false; # GIMP: gnu image manipulation program

  kdenlive.enable = false; # Kdenlive: video editing software

  plex.enable = true; # Plex: media player and server client

  /*
  Utilities / Misc
  */
  eddieAirVPN.enable = true; # Eddie AirVPN: VPN client

  galculator.enable = true; # Galculator: simple calculator

  winboat.enable = false; # Winboat: Windows remote desktop via RDP
}
