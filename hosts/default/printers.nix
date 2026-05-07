{
  # Whether printing services should be enabled.
  printEnable = false;

  # Name of the default printer.
  ensureDefaultPrinter = "[name]";

  # List of printers to ensure are configured.
  ensurePrinters = [
    {
      # URI of the printer device.
      deviceUri = "ipp://[IPv4]/ipp";
      # Physical location description of the printer.
      location = "[location]";
      # Human‑readable printer name.
      name = "[name]";
      # Printer model; "everywhere" uses generic driver.
      model = "everywhere";
    }
  ];
}
