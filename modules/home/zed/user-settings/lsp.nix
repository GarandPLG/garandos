{
  pkgs,
  lib,
  username,
  host,
  ...
}: {
  programs.zed-editor.userSettings.lsp = {
    # biome = {
    #   binary = {
    #     path = lib.getExe pkgs.bash;
    #     arguments = [
    #       "-c"
    #       "if [ -e flake.nix ]; then nix develop --command bun --bun run biome; else biome; fi"
    #     ];
    #   };
    # };
    vue-language-server = {
      initialization_options = {
        vue.hybridMode = true;
        typescript.tsdk = "./node_modules/typescript/lib";
      };
      settings = {
        "vue.inlayHints.inlineHandlerLeading" = true;
        "vue.inlayHints.missingProps" = true;
        "vue.inlayHints.optionsWrapper" = true;
        "vue.inlayHints.vBindShorthand" = true;
        "vue.inlayHints.destructuredProps" = true;

        "vue.format.template.initialIndent" = true;
        "vue.format.script.initialIndent" = true;
        "vue.format.style.initialIndent" = true;

        "vue.editor.focusMode" = true;
        "vue.editor.reactivityVisualization" = true;
        "vue.editor.templateInterpolationDecorators" = true;

        "vue.hover.rich" = true;
        "vue.autoInsert.bracketSpacing" = true;
      };
    };
    typescript-language-server.initialization_options.preferences = {
      includeInlayParameterNameHints = "all";
      includeInlayParameterNameHintsWhenArgumentMatchesName = true;
      includeInlayFunctionParameterTypeHints = true;
      includeInlayVariableTypeHints = true;
      includeInlayVariableTypeHintsWhenTypeMatchesName = true;
      includeInlayPropertyDeclarationTypeHints = true;
      includeInlayFunctionLikeReturnTypeHints = true;
      includeInlayEnumMemberValueHints = true;
    };
    tailwindcss-language-server = {
      settings = {
        includeLanguages.vue = "html";
        classFunctions = ["cva" "cx" "cn"];
      };
      experimental.classRegex = [
        "class=\"([^\"]*)\""
        "class='([^']*)'"
        ":class=\"([^\"]*)\""
        ":class='([^']*)'"
        "\\.className\\s*[+]?=\\s*['\"]([^'\"]*)['\"]"
        "\\.setAttributeNS\\(.*,\\s*['\"]class['\"],\\s*['\"]([^'\"]*)['\"]"
        "\\.setAttribute\\(['\"]class['\"],\\s*['\"]([^'\"]*)['\"]"
        "\\.classList\\.add\\(['\"]([^'\"]*)['\"]"
        "\\.classList\\.remove\\(['\"]([^'\"]*)['\"]"
        "\\.classList\\.toggle\\(['\"]([^'\"]*)['\"]"
        "\\.classList\\.contains\\(['\"]([^'\"]*)['\"]"
        "\\.classList\\.replace\\(\\s*['\"]([^'\"]*)['\"]"
        "\\.classList\\.replace\\([^,)]+,\\s*['\"]([^'\"]*)['\"]"
        "[cls|cn|className]\\s\\:\\=\\s\"([^\"]*)"
      ];
    };
    deputy = {
      binary = {
        path = lib.getExe pkgs.deputy;
        arguments = [
          "serve"
          "--github-token"
          "$(gh auth token)"
        ];
      };
    };
    rust-analyzer = {
      binary = {
        path = lib.getExe pkgs.bash;
        arguments = [
          "-c"
          "if [ -e flake.nix ]; then nix develop --command rust-analyzer; else rust-analyzer; fi"
        ];
      };
      initialization_options = {
        inlayHints = {
          maxLength = null;
          lifetimeElisionHints = {
            enable = "skip_trivial";
            useParameterNames = true;
          };
          closureReturnTypeHints = {
            enable = "always";
          };
        };
      };
    };
    clangd = {
      binary = {
        path = lib.getExe pkgs.bash;
        arguments = [
          "-c"
          "if [ -e flake.nix ]; then nix develop --command clangd; else clangd; fi"
        ];
      };
      initialization_options = {
        inlayHints = {
          maxLength = null;
          lifetimeElisionHints = {
            enable = "skip_trivial";
            useParameterNames = true;
          };
          closureReturnTypeHints = {
            enable = "always";
          };
        };
      };
    };
    nixd.settings = {
      nixpkgs.expr = "import <nixpkgs> { }";
      formatting.command = ["alejandra"];
      options = {
        nixos.expr = "(builtins.getFlake (builtins.toString \"/home/${username}/garandos\")).nixosConfigurations.\"${host}\".options";
        home-manager.expr = "(builtins.getFlake (builtins.toString \"/home/${username}/garandos\")).nixosConfigurations.\"${host}\".options.home-manager.users.type.getSubOptions []";
      };
    };
    ruff = {
      binary = {
        path = lib.getExe pkgs.bash;
        arguments = [
          "-c"
          "if [ -e flake.nix ]; then nix develop --command ruff server; else ruff server; fi"
        ];
      };
      initialization_options = {
        check.command = "ruff check .";
        inlayHints = {
          maxLength = null;
          lifetimeElisionHints = {
            enable = "skip_trivial";
            useParameterNames = true;
          };
          closureReturnTypeHints = {
            enable = "always";
          };
        };
      };
    };
  };
}
