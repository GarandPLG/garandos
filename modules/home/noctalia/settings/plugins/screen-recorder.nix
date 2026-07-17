_: {
  programs.noctalia.settings.plugin_settings."noctalia/screen_recorder" = {
    audio_codec = "flac";
    audio_source = "both";
    color_range = "full";
    hide_inactive = true;
    quality = "ultra";
    replay_duration = 60;
    replay_enabled = true;
    replay_storage = "disk";
    resolution = "1920x1080";
    video_codec = "hevc";
    video_source = "focused";
  };
}
