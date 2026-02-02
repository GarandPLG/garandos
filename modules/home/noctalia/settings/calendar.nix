{lib, ...}: {
  programs.noctalia-shell.settings.calendar.cards = lib.mkForce [
    {
      enabled = true;
      id = "calendar-header-card";
    }
    {
      enabled = true;
      id = "calendar-month-card";
    }
    {
      enabled = true;
      id = "weather-card";
    }
  ];
}
