_: {
  programs.noctalia.settings.plugin_settings."kenn/keybind-cheatsheet" = {
    compositor = "hyprland";
    hyprland_parser = "lua";
    hyprland_lua_config = "~/.config/hypr/hyprland.lua";
    columns = 3;
    merge_sequential = true;
    show_actions = true;
  };
}
