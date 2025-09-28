{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Communication
    discord
    slack
    mattermost-desktop
    # Productivity & Office
    bitwarden-desktop
    tutanota-desktop
    anki-bin
    onlyoffice-bin
    iotas
    # Cloud
    nextcloud-client
    # Browsers
    ungoogled-chromium
    # Utilities
    galculator
    gedit
    eddie
  ];
}
