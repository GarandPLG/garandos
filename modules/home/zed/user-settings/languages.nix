_: {
  programs.zed-editor.userSettings.languages = {
    Nix.language_servers = [
      "nixd"
      "!nil"
    ];
    Python = {
      format_on_save = "on";
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
    "C++" = {
      format_on_save = "on";
      tab_size = 2;
    };
  };
}
