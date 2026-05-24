{shell, ...}: {
  programs.eza = {
    enable = true;
    icons = "auto";
    enableFishIntegration =
      if shell == "fish"
      then true
      else false;
    enableBashIntegration =
      if shell == "bash"
      then true
      else false;
    git = true;

    extraOptions = [
      "--group-directories-first"
      "--no-quotes"
      "--header" # Show header row
      "--git-ignore"
      "--icons=always"
      # "--time-style=long-iso" # ISO 8601 extended format for time
      "--classify" # append indicator (/, *, =, @, |)
      "--hyperlink" # make paths clickable in some terminals
    ];
  };
}
