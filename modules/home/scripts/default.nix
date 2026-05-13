{pkgs, ...}: {
  home.packages = [
    (import ./nvidia-offload.nix {inherit pkgs;})
  ];
}
