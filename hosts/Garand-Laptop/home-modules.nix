_: {
  /*
  Development editors and IDEs
  */
  vscodium.enable = false; # VSCodium: a free and open-source "demicrosofted" VSCode
  zed-editor = {
    enable = true; # Zed Editor: a modern, high‑performance code editor
    remote-server.enable = false; # Remote Server: enable remote editing capabilities
  };

  /*
  Web browsers
  */
  librewolf.enable = true; # Librewolf: a privacy-focused Firefox fork
  ungoogled-chromium.enable = true; # Ungoogled Chromium: a privacy-focused Chromium fork

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
    };
  };
}
