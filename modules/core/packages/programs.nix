{shell, ...}: {
  programs = {
    nano.enable = true;

    hyprland = {
      enable = true;
      withUWSM = false;
    };

    fish.enable =
      if shell == "fish"
      then true
      else false;

    dconf.enable = true;

    seahorse.enable = true;

    fuse.userAllowOther = true;

    mtr.enable = true;

    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

    nix-ld = {
      enable = true;
      # libraries = with pkgs; [
      #   biome
      # ];
    };
  };
}
