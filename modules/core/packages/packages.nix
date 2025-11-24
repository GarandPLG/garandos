{
  pkgs,
  lib,
  config,
  inputs,
  system,
  ...
}: let
  mkPackage = name: pkgsOrList: {
    options.${name}.enable = lib.mkEnableOption name;
    config.environment.systemPackages =
      lib.mkIf config.${name}.enable
      (lib.toList pkgsOrList);
  };

  packages = with pkgs; {
    bitwarden = bitwarden-desktop;
    eddieAirVPN = eddie;
    galculator = galculator;
    gedit = gedit;
    iotas = iotas;
    logseq = logseq;
    mattermost = mattermost-desktop;
    slack = slack;
    tutanota = tutanota-desktop;
    exercism = exercism;
    opencode = opencode;
    lazygit = lazygit;
    prismlauncher = inputs.prismlauncher-cracked.packages.${system}.default;
    spaceCadetPinball = space-cadet-pinball;
    ttySolitaire = tty-solitaire;
    gimp = gimp;
    affinity = inputs.affinity-nix.packages.${system}.v3;
    eyeOfGnome = eog;
    kdenlive = kdePackages.kdenlive;
    plex = [
      (plex-desktop.override {extraEnv = {QT_QPA_PLATFORM = "xcb";};})
      plexamp
    ];
    freetube = freetube;
    lazydocker = lazydocker;
    distrobox = [distrobox pkgs.boxbuddy];
    winboat = [winboat freerdp];
  };
in {
  imports = builtins.attrValues (builtins.mapAttrs mkPackage packages);
}
