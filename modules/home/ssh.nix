_: {
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    matchBlocks = {
      "hp-t640-homeserver" = {
        hostname = "192.168.1.156";
        user = "garand_plg";
        port = 22;
        identityFile = "~/.ssh/hp-t640-homeserver";
      };
    };
  };
}
