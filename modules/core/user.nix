{
  pkgs,
  inputs,
  username,
  host,
  profile,
  system,
  ...
}: let
  inherit (import ../../hosts/${host}/variables.nix) gitUsername;
in {
  imports = [inputs.home-manager.nixosModules.home-manager];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = false;
    backupFileExtension = "backup-nixos";
    extraSpecialArgs = {
      inherit
        inputs
        username
        host
        profile
        system
        ;
    };
    users.${username} = {
      imports = [
        ./../home
        ../../hosts/${host}/home-modules.nix
        inputs.noctalia.homeModules.default
      ];
      home = {
        username = "${username}";
        homeDirectory = "/home/${username}";
        stateVersion = "25.11";
      };
    };
  };
  users = {
    mutableUsers = true;
    users.${username} = {
      isNormalUser = true;
      description = "${gitUsername}";
      extraGroups = [
        "adbusers"
        "docker" # access to docker as non-root
        "libvirtd" # Virt manager/QEMU access
        "lp"
        "networkmanager"
        "scanner"
        "wheel" # sudo access
        "vboxusers" # Virtual Box
        "gamemode"
      ];
      shell = pkgs.bash;
      ignoreShellProgramCheck = true;
      linger = true;
    };
  };
  nix.settings.allowed-users = ["${username}"];
}
