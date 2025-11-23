{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  programs.vscode = {
    enable = false;
    package = pkgs.vscodium;
    profiles = {
      default = {
        extensions = with pkgs.vscode-extensions;
          [
            batisteo.vscode-django
            bradlc.vscode-tailwindcss
            christian-kohler.npm-intellisense
            christian-kohler.path-intellisense
            continue.continue
            davidanson.vscode-markdownlint
            dbaeumer.vscode-eslint
            donjayamanne.githistory
            esbenp.prettier-vscode
            ethansk.restore-terminals
            formulahendry.auto-close-tag
            formulahendry.auto-rename-tag
            gruntfuggly.todo-tree
            jnoortheen.nix-ide
            mechatroner.rainbow-csv
            ms-azuretools.vscode-docker
            njpwerner.autodocstring
            octref.vetur
            oderwat.indent-rainbow
            shd101wyy.markdown-preview-enhanced
            streetsidesoftware.code-spell-checker
            supermaven.supermaven
            tomoki1207.pdf
            visualstudioexptteam.intellicode-api-usage-examples
            visualstudioexptteam.vscodeintellicode
            vscode-icons-team.vscode-icons
            vue.volar
            wholroyd.jinja
            yoavbls.pretty-ts-errors
            tamasfe.even-better-toml
            ms-ceintl.vscode-language-pack-pl
            rust-lang.rust-analyzer
            fill-labs.dependi
            usernamehw.errorlens
            bierner.docs-view
            stkb.rewrap
            ms-vscode.live-server
            vadimcn.vscode-lldb
            batisteo.vscode-django
            vitaliymaz.vscode-svg-previewer
          ]
          ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
            {
              name = "goto-alias";
              publisher = "antfu";
              version = "0.2.1";
              hash = "sha256-BJBJVG/zW2BW6K0UqQ4EE12VVIxW3g+z5CecZXRPIrM=";
            }
            {
              name = "vite";
              publisher = "antfu";
              version = "0.2.5";
              hash = "sha256-F3uaqoaLXLE7M8OPzNIIUSraTBeRMwtjxrbgQyMIyZE=";
            }
            {
              name = "django-html";
              publisher = "bibhasdn";
              version = "1.3.0";
              hash = "sha256-7xVJVcjmwl6917lqkTa0KFwMLkAvHkNT2wVML14gVCk=";
            }
            {
              name = "one-dark-pro-monokai-darker";
              publisher = "eserozvataf";
              version = "1.1.0";
              hash = "sha256-jUjBiy0CD7jw2WBMvM3h8bEC2ySEuj7532dC3v9lpyI=";
            }
            {
              name = "bootstrap-intellisense";
              publisher = "hossaini";
              version = "3.0.2";
              hash = "sha256-stZfbh42HncdRzFZ9ShumZ9Tuery9RF9c8rk3TD3P2g=";
            }
            {
              name = "tab-indent-space-align";
              publisher = "j-zeppenfeld";
              version = "0.0.3";
              hash = "sha256-+WEdYJOVWW7YumfzLkvZmrnpUiC85oLsG1BKMwL1NHc=";
            }
            {
              name = "bun-lockb";
              publisher = "jaaxxx";
              version = "0.0.7";
              hash = "sha256-CkdH/luVTFycRn4Td6ovFnEQep+tVEIXsyUjhfJwfN4=";
            }
            {
              name = "search-node-modules";
              publisher = "jasonnutter";
              version = "1.3.0";
              hash = "sha256-X2CkCVF46McnXDlASlRHKixlAzR+hU4ys8A8JsbpfYI=";
            }
            {
              name = "polacode-2019";
              publisher = "jeff-hykin";
              version = "0.6.1";
              hash = "sha256-SbfsD28gaVHAmJskUuc1Q8kA47jrVa3OO5Ur7ULk3jI=";
            }
            {
              name = "vsc-python-indent";
              publisher = "kevinrose";
              version = "1.21.0";
              hash = "sha256-SvJhVG8sofzV0PebZG4IIORX3AcfmErDQ00tRF9fk/4=";
            }
            {
              name = "json-to-ts";
              publisher = "mariusalchimavicius";
              version = "1.8.0";
              hash = "sha256-WoSycVtUAkVXv7BDuh+jFbnaU1IdVLvVjOYuIuUp79M=";
            }
            {
              name = "inline-fold-new";
              publisher = "ctf0";
              version = "0.0.2";
              hash = "sha256-DpXTBYN1Ohh3ZvvpUtas0G99fZcimsp1NL7mpIC07yk=";
            }
            {
              name = "mdc";
              publisher = "nuxt";
              version = "0.3.1";
              hash = "sha256-YJ+7gzDjA8kzxBwGLpEmfx0erJdgAntWc2OrK2zp9DM=";
            }
            {
              name = "nuxtr-vscode";
              publisher = "nuxtr";
              version = "0.2.16";
              hash = "sha256-DVoq8zdlJ2ch8PCG34f1PRkILym9XdclUHQ9s2B5OME=";
            }
            {
              name = "bun-vscode";
              publisher = "oven";
              version = "0.0.28";
              hash = "sha256-WlGqqKbfrV0gqCCdVo/UFF+Gnxhq0TNJ4LuHwFaFYXA=";
            }
            {
              name = "csv-to-table";
              publisher = "phplasma";
              version = "1.4.1";
              hash = "sha256-npe7cQ4lAZr8HCyQSJmVsCDUJcOhGhL6y1QtUtqUY50=";
            }
            {
              name = "nuxt-snippets";
              publisher = "praburangki";
              version = "1.8.0";
              hash = "sha256-qrWrrDO/Ie/mdygw18C0mrPzNQzZLsd+fapUyTVhc14=";
            }
            {
              name = "bash-debug";
              publisher = "rogalmic";
              version = "0.3.9";
              hash = "sha256-f8FUZCvz/PonqQP9RCNbyQLZPnN5Oce0Eezm/hD19Fg=";
            }
            {
              name = "vs-code-prettier-eslint";
              publisher = "rvest";
              version = "6.0.0";
              hash = "sha256-PogNeKhIlcGxUKrW5gHvFhNluUelWDGHCdg5K+xGXJY=";
            }
            {
              name = "vscode-preview-docs";
              publisher = "selemondev";
              version = "0.1.7";
              hash = "sha256-Q9bEIb2m6cqHtdVjOaNivfYvbc5/VVdabM2NVTwBOFA=";
            }
            {
              name = "autoimport";
              publisher = "steoates";
              version = "1.5.4";
              hash = "sha256-7iIwJJsoNbtTopc+BQ+195aSCLqdNAaGtMoxShyhBWY=";
            }
            {
              name = "code-spell-checker-polish";
              publisher = "streetsidesoftware";
              version = "2.1.3";
              hash = "sha256-MZeTvK9dO4Kj6hK+afJPWGmnKBtlLrrnoqtUd5s2te0=";
            }
            {
              name = "vscode-pets";
              publisher = "tonybaloney";
              version = "1.30.0";
              hash = "sha256-RxOA6xQ29JuB0NzEqMDkF9W1U+AsvgAOzGbtIUw0WyM=";
            }
            {
              name = "explorer";
              publisher = "vitest";
              version = "1.17.0";
              hash = "sha256-7OePMFsWIyrPkAW/+SRiOoowluLMEszEjWmBsW0LPpc=";
            }
            {
              name = "prettify-json";
              publisher = "mohsen1";
              version = "0.0.3";
              hash = "sha256-lvds+lFDzt1s6RikhrnAKJipRHU+Dk85ZO49d1sA8uo=";
            }
            {
              name = "uv-toolkit";
              publisher = "the0807";
              version = "0.0.2";
              hash = "sha256-OXHUwynWm4RqJYjcv5qXt5DyjFDxtNjZFNpnd22gUgg=";
            }
            {
              name = "kylin-python";
              publisher = "kylinideteam";
              version = "0.4.2";
              hash = "sha256-LhOsIvECrxLCnRjUVffS4G4fFsdP70iP/twoNoto354=";
            }
            {
              name = "rust-flash-snippets";
              publisher = "lorenzopirro";
              version = "3.1.1";
              hash = "sha256-L8x/OqbrsKDmyphzV3CDpoZ27rTnPS0U1YGv9KakW+U=";
            }
            {
              name = "rustowl-vscode";
              publisher = "cordx56";
              version = "0.3.4";
              hash = "sha256-sM4CxQfdtDkZg5B7gxw66k7ZpIfHQFORIukHRpg0+S8=";
            }
            {
              name = "vscode-coverage-gutters";
              publisher = "ryanluker";
              version = "2.13.0";
              hash = "sha256-qgPKGikqNIeZkKfd0P0keAdxRl9XNzvEJKQy58eaUZk=";
            }
            {
              name = "vscode-change-case";
              publisher = "hjdarnel";
              version = "1.4.0";
              hash = "sha256-6LS4MrG16054DQkPmr7BQJeekpEtcL2NtRe0Ckfq2w4=";
            }
            {
              name = "vscode-bevy-inspector";
              publisher = "splo";
              version = "0.3.0";
              hash = "sha256-f0FAgQ0wm3FYPz5qpMHWHnTf3un0xw+5gcyBG7PYM2E=";
            }
          ];
        userSettings = {
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
        keybindings = [
          {
            "key" = "tab";
            "command" = "-editor.emmet.action.expandAbbreviation";
            "when" = "config.emmet.triggerExpansionOnTab && editorTextFocus && !editorReadonly && !editorTabMovesFocus";
          }
          {
            "key" = "tab";
            "command" = "-editor.action.inlineSuggest.jump";
            "when" = "inlineEditIsVisible && tabShouldJumpToInlineEdit && !editorHoverFocused && !editorTabMovesFocus && !suggestWidgetVisible";
          }
          {
            "key" = "tab";
            "command" = "-Alignment Preserving Indent";
            "when" = "editorTextFocus && !editorReadOnly && !editorTabMovesFocus && !inSnippetMode && !suggestWidgetVisible && config.editor.tabCompletion != 'on'";
          }
          {
            "key" = "tab";
            "command" = "-Alignment Preserving Indent";
            "when" = "editorTextFocus && !editorReadOnly && !editorTabMovesFocus && !hasOtherSuggestions && !inSnippetMode && !suggestWidgetVisible && config.editor.tabCompletion == 'on'";
          }
        ];
      };
    };
  };
}
