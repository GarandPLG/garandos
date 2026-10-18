{pkgs, ...}: {
  programs.opencode.extraPackages = with pkgs; [
    uv
    ruff
    biome
    bun
    beads
    rust-analyzer
    alejandra
    docker
  ];
}
