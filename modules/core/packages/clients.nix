{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Communication
    slack
    mattermost-desktop
    # Productivity & Office
    bitwarden-desktop
    tutanota-desktop
    iotas
    logseq
    # Utilities
    galculator
    gedit
    eddie
    gnome-text-editor
  ];
}
