_: {
  programs.zed-editor.userSettings = {
    telemetry = {
      diagnostics = false;
      metrics = false;
    };
    icon_theme = "VSCode Icons for Zed (Dark)";
    ui_font_size = 16;
    buffer_font_size = 15;
    theme = {
      mode = "dark";
      light = "One Light";
      dark = "One Dark Pro Monokai Darker";
    };
    diagnostics.inline = {
      enabled = true;
      max_severity = "error";
    };
    inlay_hints = {
      enabled = true;
      show_type_hints = true;
      show_parameter_hints = true;
      show_other_hints = true;
      show_background = false;
      edit_debounce_ms = 700;
      scroll_debounce_ms = 50;
      toggle_on_modifiers_press = null;
    };
  };

  imports = [
    ./agent.nix
    ./language-models.nix
    ./languages.nix
    ./lsp.nix
  ];
}
