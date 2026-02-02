{host, ...}: let
  inherit (import ../../hosts/${host}/variables.nix) waybarChoice;
in {
  imports = [
    ./bash
    ./chromium
    ./fastfetch
    ./hyprland
    ./kitty
    ./librewolf
    ./peaclock
    ./rofi
    ./scripts
    ./swaync
    ./vscodium
    waybarChoice
    ./wlogout
    ./xdg
    ./zed
    ./anki.nix
    ./bat.nix
    ./btop.nix
    ./cava.nix
    ./emoji.nix
    ./eza.nix
    ./fzf.nix
    ./git.nix
    ./gtk.nix
    ./kdeConnect.nix
    ./lutris.nix
    ./nextcloud.nix
    ./noctalia.nix
    ./obs-studio.nix
    ./onlyoffice.nix
    ./overview.nix
    ./qt.nix
    ./ssh.nix
    ./starship.nix
    ./stylix.nix
    ./swappy.nix
    ./tealdeer.nix
    ./vesktop.nix
    ./virtmanager.nix
    ./zoxide.nix
  ];
}
