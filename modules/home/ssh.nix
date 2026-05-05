{username, ...}: {
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    matchBlocks = {
      "hp-t640-homeserver" = {
        hostname = "192.168.1.156";
        user = "${username}";
        port = 22;
        identityFile = "~/.ssh/hp-t640-homeserver";
      };
      "hp-t640-homeserver-tailscale" = {
        hostname = "100.106.225.106";
        user = "${username}";
        port = 22;
        identityFile = "~/.ssh/hp-t640-homeserver";
      };
      "gitssh.garandplg.com" = {
        hostname = "gitssh.garandplg.com";
        user = "git";
        port = 222;
        identityFile = "~/.ssh/id_ed25519_gitea";
        identitiesOnly = true;
      };
    };
  };
}
