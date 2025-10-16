{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Language servers & formatters
    nixd
    nil
    nixfmt-rfc-style
    # Learning & practice
    exercism
  ];
}
