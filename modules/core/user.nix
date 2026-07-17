{
  pkgs,
  inputs,
  username,
  host,
  profile,
  system,
  gitUsername,
  shell,
  extraMonitorSettings,
  keyboardLayout,
  gitEmail,
  location,
  stylixImage,
  ...
}: {
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
        extraMonitorSettings
        shell
        keyboardLayout
        gitEmail
        gitUsername
        location
        stylixImage
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
        pointerCursor.enable = true;
        shell.enableFishIntegration =
          if shell == "fish"
          then true
          else false;
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
        "lpadmin"
        "dialout"
      ];
      shell = with pkgs; (
        if shell == "fish"
        then fish
        else bash
      );
      ignoreShellProgramCheck = true;
      linger = true;
    };
  };
  nix.settings.allowed-users = ["${username}"];
}
