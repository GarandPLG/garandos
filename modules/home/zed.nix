{
  pkgs,
  lib,
  username,
  host,
  ...
}: {
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
      "opencode"
    ];

    extraPackages = with pkgs; [
      biome
      rust-analyzer
      nixd
      alejandra
      opencode
    ];

    userSettings = {
      agent = {
        always_allow_tool_actions = true;
        default_profile = "ask";
        default_model = {
          provider = "Cerebras";
          model = "gpt-oss-120b";
        };
      };
      language_models = {
        openai_compatible = {
          Cerebras = {
            api_url = "https://api.cerebras.ai/v1";
            available_models = [
              {
                name = "qwen-3-235b-a22b-instruct-2507";
                display_name = "Qwen 3 235B Instruct";
                max_tokens = 65000;
                max_output_tokens = 32000;
                capabilities = {
                  tools = true;
                  images = true;
                  parallel_tool_calls = true;
                  prompt_cache_key = false;
                };
              }
              {
                name = "llama-3.3-70b";
                display_name = "Llama 3.3 70B";
                max_tokens = 65000;
                max_output_tokens = 8000;
                capabilities = {
                  tools = true;
                  images = true;
                  parallel_tool_calls = true;
                  prompt_cache_key = true;
                };
              }
              {
                name = "gpt-oss-120b";
                display_name = "OpenAI GPT OSS";
                max_tokens = 65000;
                max_output_tokens = 32000;
                capabilities = {
                  tools = true;
                  images = true;
                  parallel_tool_calls = true;
                  prompt_cache_key = false;
                };
              }
            ];
          };
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
        nixd = {
          initialization_options.formatting.command = [
            "alejandra"
            "--quiet"
            "--"
          ];
          settings = {
            nixpkgs.expr = "import <nixpkgs> { }";
            formatting.command = ["alejandra"];
            options = {
              nixos.expr = "(builtins.getFlake (builtins.toString \"/home/${username}/garandos\")).nixosConfigurations.\"${host}\".options";
              home-manager.expr = "(builtins.getFlake (builtins.toString \"/home/${username}/garandos\")).nixosConfigurations.\"${host}\".options.home-manager.users.type.getSubOptions []";
            };
          };
        };
      };
      languages = {
        Nix.language_servers = [
          "nixd"
          "!nil"
        ];
        Python.language_servers = ["!basedpyright"];
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
