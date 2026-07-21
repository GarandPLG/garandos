{username, ...}: {
  programs.noctalia.settings.plugin_settings."avivbintangaringga/nix-monitor" = {
    branch = "nixos-unstable";
    clean_command = "nh clean all";
    show_update_check_notification = true;
    update_command = "nix flake update --option access-tokens \"github.com=$(gh auth token)\" --flake /home/${username}/garandos";
  };
}
