{inputs, ...}: {
  imports = [
    ./packages
    ./auto-cpufreq.nix
    ./boot.nix
    ./docker.nix
    ./flatpak.nix
    ./fonts.nix
    ./hardware.nix
    ./network.nix
    ./nfs.nix
    ./nh.nix
    ./printing.nix
    ./greetd.nix
    ./security.nix
    ./services.nix
    ./steam.nix
    ./stylix.nix
    ./syncthing.nix
    ./system.nix
    ./thunar.nix
    ./user.nix
    ./xdg.nix
    ./xserver.nix
    inputs.stylix.nixosModules.stylix
  ];
}
