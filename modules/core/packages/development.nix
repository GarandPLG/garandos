{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Language servers & formatters
    nixd
    nil
    nixfmt-rfc-style
    # Editors & IDEs
    zed-editor
    # Learning & practice
    exercism
  ];
}
