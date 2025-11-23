_: {
  programs.zed-editor.userSettings.languages = {
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
}
