{
  lib,
  location,
  ...
}: {
  programs.noctalia-shell.settings.location = lib.mkForce {
    name = "${location}";
    weatherEnabled = true;
    weatherShowEffects = true;
    useFahrenheit = false;
    use12hourFormat = false;
    showWeekNumberInCalendar = false;
    showCalendarEvents = true;
    showCalendarWeather = true;
    analogClockInCalendar = false;
    firstDayOfWeek = -1;
    hideWeatherTimezone = false;
    hideWeatherCityName = false;
  };
}
