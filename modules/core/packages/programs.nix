{
  ...
}:
{
  programs = {
    nano.enable = true;
    hyprland = {
      enable = true;
      withUWSM = false;
    };
    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    mtr.enable = true;
    adb.enable = true;
    hyprlock.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    kdeconnect.enable = true;
  };
}
