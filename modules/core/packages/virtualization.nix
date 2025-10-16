{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    virt-viewer
    lazydocker
    docker-client
    distrobox
  ];
}
