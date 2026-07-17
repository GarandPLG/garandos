{
  username,
  stylixImage,
  ...
}: let
  wallpapersPath = "/home/${username}/Pictures/Wallpapers";
in {
  programs.noctalia.settings = {
    lockscreen.wallpaper = "${wallpapersPath}/${stylixImage}";
    wallpaper.enabled = true;
  };
}
