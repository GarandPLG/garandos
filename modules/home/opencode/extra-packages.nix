{pkgs, ...}: {
  programs.opencode.extraPackages = with pkgs; [
    uv
    ruff
    biome
    bun
    rust-analyzer
    alejandra
    docker
  ];
}
