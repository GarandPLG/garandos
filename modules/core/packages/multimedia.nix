{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Video & image processing
    ffmpeg
    ffmpegthumbnailer
    mpv
    gimp3
    eog
    kdePackages.kdenlive
    # Audio
    rhythmbox
    plexamp
    picard
    pavucontrol
    playerctl
    # Media downloaders & clients
    freetube
    ytmdl
  ];
}
