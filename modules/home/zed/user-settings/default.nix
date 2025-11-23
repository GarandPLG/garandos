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
  };

  imports = [
    ./agent.nix
    ./language-models.nix
    ./languages.nix
    ./lsp.nix
  ];
}
