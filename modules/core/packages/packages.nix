{
  pkgs,
  lib,
  config,
  inputs,
  system,
  ...
}: let
  mkPackage = name: pkgsOrList: {
    options.packages.${name}.enable = lib.mkEnableOption name;
    config.environment.systemPackages =
      lib.mkIf config.packages.${name}.enable
      (lib.toList pkgsOrList);
  };

  packages = with pkgs; {
    eddieAirVPN = eddie;
    gnomeCalculator = gnome-calculator;
    gedit = gedit;
    iotas = iotas;
    # logseq = logseq;
    mattermost = mattermost-desktop;
    slack = slack;
    tutanota = tutanota-desktop;
    exercism = exercism;
    jan = jan;
    lazygit = lazygit;
    prismlauncher = inputs.prismlauncher-cracked.packages.${system}.default;
    spaceCadetPinball = space-cadet-pinball;
    ttySolitaire = tty-solitaire;
    gimp = gimp;
    eyeOfGnome = eog;
    kdenlive =
      kdePackages.kdenlive.overrideAttrs
      (old: {
        postInstall =
          (old.postInstall or "")
          + ''
            wrapProgram $out/bin/kdenlive \
              --set QT_SCALE_FACTOR 0.8
          '';
      });
    plex = [
      (
        plex-desktop.override {
          extraEnv = {
            QT_QPA_PLATFORM = "xcb";
          };
        }
      )
      plexamp
    ];
    jellyfin = [
      tsukimi
      finamp
    ];
    freetube = freetube;
    lazydocker = lazydocker;
    distrobox = [
      distrobox
      pkgs.boxbuddy
    ];
    winboat = [
      winboat
      freerdp
    ];
    signal = signal-desktop;
    pixieditor = pixieditor;
    bottles = bottles;
    heroic = heroic;
    adb = android-tools;
    teams = teams-for-linux;
    ferdium = ferdium;
    logisim-evolution = logisim-evolution;
    notify = notify-client;
    boxes = gnome-boxes;
    kmines = kdePackages.kmines;
    switcheroo = switcheroo;
    simpleScan = simple-scan.overrideAttrs (old: {
      postFixup =
        (old.postFixup or "")
        + ''
          wrapProgram $out/bin/simple-scan \
            --prefix LD_LIBRARY_PATH : "/etc/sane-libs"
        '';
    });
  };
in {
  imports = builtins.attrValues (builtins.mapAttrs mkPackage packages);
}
