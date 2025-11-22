{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Learning & practice
    exercism
    # AI coding
    opencode
  ];
}
