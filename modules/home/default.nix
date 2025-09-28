{ host, ... }:
let
  inherit (import ../../hosts/${host}/variables.nix) waybarChoice;
in
{
  imports = [
    ./fastfetch
    ./hyprland
    ./rofi
    ./scripts
    waybarChoice
    ./wlogout
    ./amfora.nix
    ./bash.nix
    ./bash-aliases.nix
    ./bash-functions.nix
    ./bat.nix
    ./btop.nix
    ./bottom.nix
    ./cava.nix
    ./emoji.nix
    ./eza.nix
    ./fzf.nix
    ./gh.nix
    ./git.nix
    ./gtk.nix
    ./kitty.nix
    ./lazygit.nix
    ./librewolf.nix
    ./obs-studio.nix
    ./qt.nix
    ./ssh.nix
    ./starship.nix
    ./stylix.nix
    ./swappy.nix
    ./swaync.nix
    ./tealdeer.nix
    ./virtmanager.nix
    ./xdg.nix
    ./zoxide.nix
    ./vscode.nix
    # ./zed.nix
  ];
}
