{location, ...}: {
  programs.noctalia.settings.location = {
    auto_locate = false;
    address = "${location}";
  };
}
