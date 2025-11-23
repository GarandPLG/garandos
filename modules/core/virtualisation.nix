_: {
  # Only enable either docker or podman -- Not both
  virtualisation = {
    docker.enable = true;
    podman.enable = false;
    libvirtd.enable = true;

    virtualbox.host = {
      enable = false;
      enableExtensionPack = true;
    };
  };

  programs.virt-manager.enable = false;
}
