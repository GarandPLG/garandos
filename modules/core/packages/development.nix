{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Learning & practice
    exercism
  ];
}
