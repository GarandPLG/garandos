{username, ...}: {
  programs.noctalia.settings.audio = {
    enable_overdrive = true;
    enable_sounds = true;
    notification_sound = "/home/${username}/garandos/modules/home/noctalia/settings/notification/payday-2-new-objective-sound-effect.wav";
    sound_volume = 0.1;
  };
}
