{
  pkgs,
  inputs,
  system,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    virt-viewer
    lazydocker
    docker-client
    distrobox
    boxbuddy
    freerdp
    inputs.winboat.packages.${system}.winboat
  ];
}
