{ pkgs, ... }:
let
  messengerIcon = pkgs.fetchurl {
    url = "https://assets.stickpng.com/images/580b57fcd9996e24bc43c526.png";
    sha256 = "sha256-mQ7TAsLIWLZhun1DrJFgLkkwpqvWujhGT6Ig8Rf6vbc=";
  };
  mastodonIcon = pkgs.fetchurl {
    url = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Mastodon_logotype_%28simple%29_new_hue.svg/1200px-Mastodon_logotype_%28simple%29_new_hue.svg.png";
    sha256 = "sha256-y31Pkl4iExgiM4yZ64t/elA7FYZM1daGQIvYzJdmWhw=";
  };
  nextcloudIcon = pkgs.fetchurl {
    url = "https://cdn.freelogovectors.net/wp-content/uploads/2020/02/nextcloud-logo.png";
    sha256 = "sha256-vbe3Jz6oNCUlhK81LGlDDFbo6xpUXiDio40bYqJ4lf4=";
  };
  chatgptIcon = pkgs.fetchurl {
    url = "https://static.vecteezy.com/system/resources/previews/031/110/149/large_2x/chatgpt-logo-transparent-free-png.png";
    sha256 = "sha256-ZWmhchblQkksW02eduVrkUSPAlWPGC2fjqxrAGAF5jw=";
  };
  claudeIcon = pkgs.fetchurl {
    url = "https://registry.npmmirror.com/@lobehub/icons-static-png/1.65.0/files/dark/claude-color.png";
    sha256 = "sha256-wmYmbmT2/bR4JrnZJu2stjRZm//O5TB9EPE2NQWdGkQ=";
  };
  glanceIcon = pkgs.fetchurl {
    url = "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/glance.png";
    sha256 = "sha256-xyFlmPpt+DABoGX5oBqj/aQVdxtmNflat9Jb2BE7SOY=";
  };
in
{
  xdg = {
    enable = true;
    mime.enable = true;
    mimeApps.enable = true;
    portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
      configPackages = [ pkgs.hyprland ];
    };
    desktopEntries = {
      "messenger" = {
        name = "Messenger";
        genericName = "Messenger";
        exec = "chromium --profile-directory=Default --app=https://www.messenger.com/";
        icon = "${messengerIcon}";
        terminal = false;
        type = "Application";
      };
      "mastodon" = {
        name = "Mastodon";
        genericName = "Mastodon";
        exec = "chromium --profile-directory=Default --app=https://metalhead.club/";
        icon = "${mastodonIcon}";
        terminal = false;
        type = "Application";
      };
      "garandcloud" = {
        name = "GarandCloud";
        genericName = "Nextcloud";
        exec = "chromium --profile-directory=Default --app=https://nextcloud.garandplg.com/";
        icon = "${nextcloudIcon}";
        terminal = false;
        type = "Application";
      };
      "chatgpt" = {
        name = "ChatGPT";
        genericName = "ChatGPT";
        exec = "chromium --profile-directory=Default --app=https://chatgpt.com/";
        icon = "${chatgptIcon}";
        terminal = false;
        type = "Application";
      };
      "claude" = {
        name = "Claude";
        genericName = "Claude";
        exec = "chromium --profile-directory=Default --app=https://claude.ai/";
        icon = "${claudeIcon}";
        terminal = false;
        type = "Application";
      };
      "glance" = {
        name = "Glance";
        genericName = "Glance";
        exec = "chromium --profile-directory=Default --app=https://glance.garandplg.com/";
        icon = "${glanceIcon}";
        terminal = false;
        type = "Application";
      };
    };
  };
}
