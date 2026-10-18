{pkgs, ...}: {
  programs.zed-editor.extraPackages = with pkgs; [
    # biome
    rust-analyzer
    nixd
    alejandra
    opencode
    uv
    python314
    ruff
    deputy
    tailwindcss-language-server
    typescript-language-server
    omnisharp-roslyn
  ];
}
