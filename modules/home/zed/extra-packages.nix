{pkgs, ...}: {
  programs.zed-editor.extraPackages = with pkgs; [
    biome
    rust-analyzer
    nixd
    alejandra
    opencode
  ];
}
