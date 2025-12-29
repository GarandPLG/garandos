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
}
