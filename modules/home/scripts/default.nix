{pkgs, ...}: {
  home.packages = [
    (import ./nvidia-offload.nix {inherit pkgs;})
    (import ./restart-noctalia.nix {inherit pkgs;})
  ];
}
