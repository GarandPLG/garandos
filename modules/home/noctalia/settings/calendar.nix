{gitEmail, ...}: {
  programs.noctalia.settings.calendar = {
    enabled = true;
    account."home_nextcloud" = {
      name = "Kalendarz";
      provider = "custom";
      server_url = "https://nextcloud.garandplg.com/remote.php/dav";
      type = "caldav";
      username = "${gitEmail}";
    };
  };
}
