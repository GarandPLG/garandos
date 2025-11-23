_: {
  programs.vscode.profiles.default.keybindings = [
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
}
