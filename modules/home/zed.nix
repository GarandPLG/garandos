{ pkgs, lib, ... }:
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
      "biome"
    ];

    extraPackages = with pkgs; [
      biome
      rust-analyzer
    ];

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
      lsp = {
        rust-analyzer = {
          binary = {
            path = lib.getExe pkgs.bash;
            arguments = [
              "-c"
              "if [ -e flake.nix ]; then nix develop --command rust-analyzer; else rust-analyzer; fi"
            ];
          };
        };
      };
      languages = {
        Python.language_servers = [ "!basedpyright" ];
        YAML.tab_size = 2;
        JavaScript = {
          formatter.language_server.name = "biome";
          code_actions_on_format = {
            "source.fixAll.biome" = true;
            "source.organizeImports.biome" = true;
          };
          tab_size = 2;
        };
        TypeScript = {
          formatter.language_server.name = "biome";
          code_actions_on_format = {
            "source.fixAll.biome" = true;
            "source.organizeImports.biome" = true;
          };
          tab_size = 2;
        };
        Astro = {
          formatter.language_server.name = "biome";
          code_actions_on_format = {
            "source.fixAll.biome" = true;
            "source.organizeImports.biome" = true;
          };
          tab_size = 2;
        };
        "Vue.js" = {
          formatter.language_server.name = "biome";
          code_actions_on_format = {
            "source.fixAll.biome" = true;
            "source.organizeImports.biome" = true;
          };
          tab_size = 2;
        };
        JSON = {
          formatter.language_server.name = "biome";
          code_actions_on_format = {
            "source.fixAll.biome" = true;
            "source.organizeImports.biome" = true;
          };
          tab_size = 2;
        };
        JSONC = {
          formatter.language_server.name = "biome";
          code_actions_on_format = {
            "source.fixAll.biome" = true;
            "source.organizeImports.biome" = true;
          };
          tab_size = 2;
        };
        CSS = {
          formatter.language_server.name = "biome";
          code_actions_on_format = {
            "source.fixAll.biome" = true;
            "source.organizeImports.biome" = true;
          };
          tab_size = 2;
        };
      };
    };
  };
}
