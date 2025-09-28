{ pkgs, config, ... }:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_zen;
    kernelModules = [ "v4l2loopback" ];
    extraModulePackages = [ config.boot.kernelPackages.v4l2loopback ];
    kernel.sysctl = {
      "vm.max_map_count" = 2147483642;
    };
    loader = {
      efi.canTouchEfiVariables = true;
      limine = {
        enable = true;
        style = {
          wallpapers = [
            ./../../wallpapers/attack-on-titan-mikasa-ackerman.jpg
          ];
          wallpaperStyle = "centered";
          backdrop = "${config.stylix.base16Scheme.base00}";
          interface = {
            branding = "GarandOS Bootloader";
            resolution = "1920x1080";
          };
        };
      };
    };
    # Appimage Support
    binfmt.registrations.appimage = {
      wrapInterpreterInShell = false;
      interpreter = "${pkgs.appimage-run}/bin/appimage-run";
      recognitionType = "magic";
      offset = 0;
      mask = ''\xff\xff\xff\xff\x00\x00\x00\x00\xff\xff\xff'';
      magicOrExtension = ''\x7fELF....AI\x02'';
    };
    plymouth.enable = true;
  };
}
