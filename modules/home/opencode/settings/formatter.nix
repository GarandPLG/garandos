_: {
  programs.opencode.settings.formatter = {
    gofmt.disabled = true;
    mix.disabled = true;
    prettier.disabled = true;
    zig.disabled = true;
    clang-format.disabled = true;
    ktlint.disabled = true;
    rubocop.disabled = true;
    standardrb.disabled = true;
    htmlbeautifier.disabled = true;
    air.disabled = true;
    dart.disabled = true;
    dfmt.disabled = true;
    ocamlformat.disabled = true;
    terraform.disabled = true;
    gleam.disabled = true;
    nixfmt.disabled = true;
    shfmt.disabled = true;
    pint.disabled = true;
    oxfmt.disabled = true;
    ormolu.disabled = true;

    # biome = {};
    # ruff = {};
    # rustfmt = {};
    # cargo = {};
    # uv = {};

    alejandra = {
      command = ["alejandra" "$FILE"];
      extensions = [".nix"];
    };
  };
}
