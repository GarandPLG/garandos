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
      settings.publish = {
        disable-publishing = false;
        disable-user-service-publishing = false;
        publish-addresses = true;
      };
    };

    ipp-usb.enable = true;

    udev = {
      enable = true;
      packages = with pkgs; [sane-airscan];
    };

    saned.enable = true;
  };

  hardware = lib.mkIf printEnable {
    printers = {
      ensureDefaultPrinter = ensureDefaultPrinter;
      ensurePrinters = ensurePrinters;
    };

    sane = {
      enable = true;
      extraBackends = with pkgs; [sane-airscan];
      disabledDefaultBackends = ["escl"];
    };
  };
}
