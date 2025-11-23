_: {
  programs.vscode.profiles.default.userSettings = {
    "editor.foldingImportsByDefault" = true;
    "editor.fontFamily" = "FiraCode Nerd Font";
    "editor.formatOnPaste" = true;
    "editor.formatOnSave" = true;
    "editor.guides.bracketPairs" = false;
    "editor.guides.indentation" = false;
    "editor.inlayHints.enabled" = "off";
    "editor.inlineSuggest.showToolbar" = "always";
    "editor.largeFileOptimizations" = false;
    "editor.minimap.enabled" = false;
    "editor.quickSuggestions" = {
      "strings" = "on";
    };
    "editor.suggestFontSize" = 16;
    "editor.suggestLineHeight" = 30;
    "editor.tabSize" = 2;
    "editor.unicodeHighlight.ambiguousCharacters" = false;
    "editor.unicodeHighlight.invisibleCharacters" = false;
    "editor.wordWrap" = "off";
    # Workbench settings
    "workbench.colorCustomizations" = {
      "editor.lineHighlightBackground" = "#1073cf2d";
      "editor.lineHighlightBorder" = "#9fced11f";
    };
    "workbench.colorTheme" = "One Dark Pro Monokai Darker";
    "workbench.iconTheme" = "vscode-icons";
    "workbench.startupEditor" = "none";
    # Terminal settings
    "terminal.integrated.fontFamily" = "FiraCode Nerd Fonts Mono";
    # Git settings
    "git.confirmSync" = false;
    "git.enableSmartCommit" = true;
    # Explorer settings
    "explorer.confirmDelete" = false;
    "explorer.confirmDragAndDrop" = false;
    # Diff editor settings
    "diffEditor.ignoreTrimWhitespace" = false;
    "diffEditor.wordWrap" = "off";
    # Zen mode settings
    "zenMode.centerLayout" = false;
    "zenMode.hideActivityBar" = false;
    "zenMode.hideLineNumbers" = false;
    # Language specific settings
    "[typescript]" = {
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
    };
    "[vue]" = {
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
    };
    "[jsonc]" = {
      "editor.defaultFormatter" = "vscode.json-language-features";
    };
    "[json]" = {
      "editor.defaultFormatter" = "vscode.json-language-features";
    };
    "[python]" = {
      "editor.tabSize" = 4;
    };
    # File associations
    "files.associations" = {
      "*.html" = "html";
      "*.txt" = "plaintext";
    };
    # JavaScript/TypeScript settings
    "javascript.updateImportsOnFileMove.enabled" = "always";
    "typescript.updateImportsOnFileMove.enabled" = "always";
    # Python settings
    "python.linting.pylintEnabled" = false;
    "python.linting.flake8Enabled" = true;
    "python.linting.flake8Args" = [
      "--line-width=119"
      "--ignore=T000;E501;E265;E266;N802;D;Q;W504"
      "--exclude=migrations;mocks"
    ];
    "python.linting.enabled" = true;
    "python.formatting.provider" = "yapf";
    "python.formatting.yapfArgs" = [
      "--style={based_on_style = pep8; column_limit = 119; dedent_closing_brackets = true; split_before_first_argument = true; coalesce_brackets = false; split_before_dict_set_generator = false; allow_split_before_dict_value = false; split_all_comma_separated_values = false; split_before_arithmetic_operator = false; split_before_logical_operator = false; split_before_named_assigns = false}"
    ];
    "python.languageServer" = "Jedi";
    "python.jediMemoryLimit" = 1024;
    "python.jedi.hover.enable" = true;
    "python.jedi.hover.detailed" = false;
    "python.jedi.hover.signature" = true;
    "python.analysis.completeFunctionParens" = true;
    "editor.hover.enabled" = true;
    # Vue settings
    "vue.codeActions.enabled" = false;
    "vue.format.script.initialIndent" = true;
    "vue.format.style.initialIndent" = true;
    "vue.splitEditors.icon" = true;
    "vue.splitEditors.layout.left" = [
      "script"
      "scriptSetup"
    ];
    "vue.splitEditors.layout.right" = [
      "template"
      "customBlocks"
      "style"
    ];
    "vetur.ignoreProjectWarning" = true;
    "vetur.languageFeatures.codeActions" = false;
    "vetur.useWorkspaceDependencies" = true;
    "prettier.vueIndentScriptAndStyle" = true;
    # // Nuxt settings
    "nuxtr.defaultPackageManager" = "Bun";
    "nuxtr.monorepoMode.DirectoryName" = "";
    "nuxtr.openItemsAfterCreation" = true;
    "nuxtr.piniaFiles.defaultTemplate" = "setup";
    "nuxtr.vueFiles.firstTag" = "script";
    "nuxtr.vueFiles.style.defaultLanguage" = "postcss";
    # CSS/Tailwind settings
    "tailwindCSS.emmetCompletions" = true;
    # Syntax highlighting and appearance
    "indentRainbow.colorOnWhiteSpaceOnly" = true;
    "indentRainbow.indicatorStyle" = "light";
    "indentRainbow.lightIndicatorStyleLineWidth" = 4;
    # Spelling and language
    "cSpell.language" = "en;pl";
    "cSpell.userWords" = [
      "garand"
      "Garand's"
      "garandplg"
      "garands"
      "lockb"
      "Shadcn"
      "Vite"
    ];
    # Navigation and intellisense
    "editor.gotoLocation.multipleDefinitions" = "goto";
    "path-intellisense.extensionOnImport" = true;
    # Markdown settings
    "markdown-preview-enhanced.previewTheme" = "one-dark.css";
    # Extension specific settings
    "supermaven.allowGitignore" = true;
    "supermaven.enable" = {
      "*" = true;
    };
    "continue.enableTabAutocomplete" = false;
    "continue.showInlineTip" = false;
    "continue.telemetryEnabled" = false;
    "hediet.vscode-drawio.resizeImages" = null;
    "todo-tree.highlights.useColourScheme" = true;
    "vite.autoStart" = false;
    # Security and trust
    "security.workspace.trust.untrustedFiles" = "open";
    # Remote development
    "remote.autoForwardPortsSource" = "hybrid";
    "[plaintext]" = {
      "editor.unicodeHighlight.ambiguousCharacters" = false;
      "editor.unicodeHighlight.invisibleCharacters" = false;
    };
    "python.diagnostics.sourceMapsEnabled" = true;
    "vsintellicode.modify.editor.suggestSelection" = "automaticallyOverrodeDefaultValue";
    "githubLocalActions.workflowsDirectory" = ".gitea/workflows";
    "errorLens.excludeBySource" = [
      "cSpell"
    ];
  };
}
