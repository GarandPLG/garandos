_: {
  /*
  Development editors and IDEs
  */
  vscodium.enable = false; # VSCodium: a free and open-source "demicrosofted" VSCode
  zed-editor = {
    enable = true; # Zed Editor: a modern, high‑performance code editor
    remote-server.enable = false; # Remote Server: enable remote editing capabilities
  };
  opencode.enable = false; # OpenCode: terminal coding agent
  codex.enable = true; # Codex: Lightweight coding agent that runs in your terminal
  ollama.enable = false; # Ollama: Local Llms

  /*
  Web browsers
  */
  librewolf.enable = false; # Librewolf: a privacy-focused Firefox fork
  ungoogled-chromium.enable = false; # Ungoogled Chromium: a privacy-focused Chromium fork

  /*
  System utilities
  */
  btop.enable = true; # Btop: a resource monitor for the terminal
  easyeffects.enable = true; # EasyEffects: Audio effects for PipeWire applications
  cava.enable = false; # Cava: terminal audio visualizer
  fastfetch.enable = true; # Fastfetch: a fast system information tool

  /*
  Communication and synchronization
  */
  kdeconnect.enable = true; # KDE Connect: integrate your phone and desktop
  nextcloud-client.enable = true; # Nextcloud Client: sync files with a Nextcloud server
  vesktop.enable = true; # Vesktop: a community‑driven Discord client

  /*
  Gaming
  */
  lutris.enable = false; # Lutris: an open gaming platform
  mangohud.enable = true; # MangoHud: Vulkan and OpenGL overlay for monitoring FPS, temperatures, CPU/GPU load and more
  prismlauncher.enable = false; # Prism Launcher: Minecraft modded launcher

  /*
  Media recording and streaming
  */
  obs-studio.enable = false; # OBS Studio: streaming and recording software

  /*
  Office suite
  */
  onlyoffice.enable = true; # OnlyOffice: an office suite compatible with Microsoft formats

  /*
  Learning tools
  */
  anki.enable = true; # Anki: spaced‑repetition flashcard program

  /*
  Productivity / Knowledge Management
  */
  obsidian = {
    enable = true; # Obsidian: Powerful knowledge base that works on top of a local folder of plain text Markdown files
    vaults = {
      "BoM".enable = true; # Blood of Mages: ttrpg session
    };
  };

  /*
  XDG desktop entries (PWA)
  */
  xdgDesktopEntries = {
    enable = true; # Enable XDG desktop entries
    entries = {
      messenger.enable = true; # Messenger: Facebook Messenger
      mastodon.enable = true; # Mastodon: a decentralized social network
      garandcloud.enable = true; # GarandCloud: my Nextcloud instance
      chatgpt.enable = true; # ChatGPT: a large language model
      claude.enable = true; # Claude: a large language model
      glance.enable = true; # Glance: my home server dashboard
      jellyfinClient.enable = true; # Jellyfin: My Jellyfin
      openWebUI.enable = true; # Open WebUI: Comprehensive suite for LLMs with a user-friendly WebUI
    };
  };

  # /*
  # Noctalia-shell plugins
  # */
  # noctalia-plugins = {
  #   mini-docker.enable = false; # Mini Docker: Manage Docker containers, images, volumes & networks
  #   timer.enable = false; # Timer: A timer and stopwatch plugin for the bar & control center.
  #   keybind-cheatsheet.enable = true; # Keybind Cheatsheet: Universal keyboard shortcuts keymap that automatically detects and displays keybindings for Hyprland, Niri, or MangoWC compositors.
  #   kde-connect.enable = true; # KDE Connect: A Plugin integrating your mobile devices into a panel using KDEConnect
  #   screen-recorder.enable = false; # Screen Recorder: Hardware-accelerated screen recording using gpu-screen-recorder with customizable video and audio settings
  #   screenshot.enable = true; # Screenshot: Quick screenshot button in bar for Hyprland, Sway, and Niri
  #   ntfy-notifications.enable = true; # ntfy Notifications: Subscribe to ntfy topics and receive push notifications directly in your bar, with full theming support
  #   tailscale.enable = true; # Tailscale: Show Tailscale status in the menu bar and send/receive files via Taildrop.
  # };
}
