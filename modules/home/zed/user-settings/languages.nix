_: {
  programs.zed-editor.userSettings.languages = {
    Nix.language_servers = [
      "nixd"
      "!nil"
    ];
    Python = {
      format_on_save = "off";
      formatter.language_server.name = "ruff";
      code_actions_on_format."source.organizeImports.ruff" = true;
      language_servers = [
        "ruff"
        "!ty"
        "!basedpyright"
      ];
      tab_size = 4;
    };
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
      language_servers = ["typescript-language-server" "!vtsls"];
      colorize_brackets = true;
      formatter.language_server.name = "biome";
      code_actions_on_format = {
        "source.fixAll.biome" = true;
        "source.organizeImports.biome" = true;
      };
      tab_size = 2;
    };
    Astro = {
      language_servers = ["typescript-language-server" "!vtsls"];
      formatter.language_server.name = "biome";
      code_actions_on_format = {
        "source.fixAll.biome" = true;
        "source.organizeImports.biome" = true;
      };
      tab_size = 2;
    };
    "Vue.js" = {
      language_servers = ["vue-language-server" "!vetur" "typescript-language-server" "!vtsls"];
      colorize_brackets = true;
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
      language_servers = [
        "tailwindcss-intellisense-css"
        "!vscode-css-language-server"
      ];
      formatter.language_server.name = "biome";
      code_actions_on_format = {
        "source.fixAll.biome" = true;
        "source.organizeImports.biome" = true;
      };
      tab_size = 2;
    };
    "C++" = {
      format_on_save = "on";
      tab_size = 2;
    };
  };
}
