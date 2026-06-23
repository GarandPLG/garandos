{
  pkgs,
  lib,
  config,
  ...
}: let
  fetchIcon = url: sha256:
    pkgs.fetchurl {
      inherit url sha256;
    };

  makeEntry = app: {
    name = app.displayName;
    genericName = app.genericName or app.displayName;
    exec = "helium --profile-directory=Default --app=${app.url}";
    icon = "${fetchIcon app.iconUrl app.iconSha}";
    terminal = false;
    type = "Application";
  };

  apps = [
    {
      name = "messenger";
      displayName = "Messenger";
      url = "https://www.facebook.com/messages/";
      iconUrl = "https://assets.stickpng.com/images/580b57fcd9996e24bc43c526.png";
      iconSha = "sha256-mQ7TAsLIWLZhun1DrJFgLkkwpqvWujhGT6Ig8Rf6vbc=";
    }
    {
      name = "mastodon";
      displayName = "Mastodon";
      url = "https://metalhead.club/";
      iconUrl = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Mastodon_logotype_%28simple%29_new_hue.svg/1200px-Mastodon_logotype_%28simple%29_new_hue.svg.png";
      iconSha = "sha256-y31Pkl4iExgiM4yZ64t/elA7FYZM1daGQIvYzJdmWhw=";
    }
    {
      name = "garandcloud";
      displayName = "GarandCloud";
      genericName = "Nextcloud";
      url = "https://nextcloud.garandplg.com/";
      iconUrl = "https://cdn.freelogovectors.net/wp-content/uploads/2020/02/nextcloud-logo.png";
      iconSha = "sha256-vbe3Jz6oNCUlhK81LGlDDFbo6xpUXiDio40bYqJ4lf4=";
    }
    {
      name = "chatgpt";
      displayName = "ChatGPT";
      url = "https://chatgpt.com/";
      iconUrl = "https://static.vecteezy.com/system/resources/previews/031/110/149/large_2x/chatgpt-logo-transparent-free-png.png";
      iconSha = "sha256-ZWmhchblQkksW02eduVrkUSPAlWPGC2fjqxrAGAF5jw=";
    }
    {
      name = "claude";
      displayName = "Claude";
      url = "https://claude.ai/";
      iconUrl = "https://registry.npmmirror.com/@lobehub/icons-static-png/1.65.0/files/dark/claude-color.png";
      iconSha = "sha256-wmYmbmT2/bR4JrnZJu2stjRZm//O5TB9EPE2NQWdGkQ=";
    }
    {
      name = "glance";
      displayName = "Glance";
      url = "https://glance.garandplg.com/";
      iconUrl = "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/glance.png";
      iconSha = "sha256-xyFlmPpt+DABoGX5oBqj/aQVdxtmNflat9Jb2BE7SOY=";
    }
    {
      name = "jellyfinClient";
      displayName = "Jellyfin Client";
      url = "https://jellyfin.garandplg.com";
      iconUrl = "https://jellyfin.org/images/logo.svg";
      iconSha = "sha256-sRSB2rxThd4+vMmdpRTz+bEKgdrmF5NG4I74I6kfCyY=";
    }
  ];
in {
  options.xdgDesktopEntries = {
    enable = lib.mkEnableOption "PWA Apps";
    entries = builtins.listToAttrs (
      map (app: {
        name = app.name;
        value = {
          enable = lib.mkEnableOption "Enable ${app.displayName} PWA";
        };
      })
      apps
    );
  };

  config.xdg.desktopEntries = lib.mkIf config.xdgDesktopEntries.enable (
    builtins.listToAttrs (
      builtins.concatMap (
        app: let
          entryConfig = config.xdgDesktopEntries.entries.${app.name};
        in
          if entryConfig.enable
          then [
            {
              name = app.name;
              value = makeEntry app;
            }
          ]
          else []
      )
      apps
    )
  );
}
