{
  pkgs,
  lib,
  printEnable,
  ensureDefaultPrinter,
  ensurePrinters,
  ...
}: {
  services = lib.mkIf printEnable {
    printing = {
      enable = true;
      drivers = with pkgs; [
        cups-filters
        cups-browsed
      ];
      listenAddresses = ["*:631"];
      allowFrom = ["all"];
      browsing = true;
      defaultShared = true;
      openFirewall = true;
    };
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
      publish = {
        enable = true;
        userServices = true;
      };
    };
    ipp-usb.enable = true;
  };

  hardware.printers = lib.mkIf printEnable {
    ensureDefaultPrinter = ensureDefaultPrinter;
    ensurePrinters = ensurePrinters;
  };
}
