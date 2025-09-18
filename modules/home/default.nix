{ host, ... }:
let
  inherit (import ../../hosts/${host}/variables.nix) waybarChoice;
in
{
  imports = [
    waybarChoice
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
    ./fastfetch
    ./fzf.nix
    ./gh.nix
    ./git.nix
    ./gtk.nix
    ./htop.nix
    ./hyprland
    ./kitty.nix
    ./lazygit.nix
    ./librewolf.nix
    ./obs-studio.nix
    ./obs-studio.nix
    ./rofi
    ./qt.nix
    ./ssh.nix
    ./scripts
    ./scripts/gemini-cli.nix
    ./starship.nix
    ./stylix.nix
    ./swappy.nix
    ./swaync.nix
    ./tealdeer.nix
    ./virtmanager.nix
    ./wlogout
    ./xdg.nix
    ./zoxide.nix
    ./vscode.nix
    # ./zed.nix
  ];
}
