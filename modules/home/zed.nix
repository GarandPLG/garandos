{ pkgs, ... }:
{
  programs.zed-editor = {
    enable = true;
    package = pkgs.zed-editor;
    installRemoteServer = true;

    extensions = [
      "toml"
      "dockerfile"
      "git-firefly"
      "vue"
      "astro"
      "docker-compose"
      "nix"
      "csv"
      "rainbow-csv"
      "vscode-icons"
      "codebook"
      "python-requirements"
      "one-dark-pro-monokai-darker"
      "hyprlang"
      "json5"
      "html-jinja"
      "deputy"
    ];

    extraPackages = with pkgs; [ biome ];

    userSettings = {
      agent = {
        always_allow_tool_actions = true;
        default_profile = "ask";
        default_model = {
          provider = "anthropic";
          model = "claude-sonnet-4-latest";
        };
      };
      telemetry = {
        diagnostics = false;
        metrics = false;
      };
      icon_theme = "VSCode Icons (Dark)";
      ui_font_size = 16;
      buffer_font_size = 15;
      theme = {
        mode = "dark";
        light = "One Light";
        dark = "One Dark Pro Monokai Darker";
      };
      languages = {
        Python = {
          language_servers = [ "!basedpyright" ];
        };
        YAML = {
          tab_size = 2;
        };
      };
    };
  };
}
