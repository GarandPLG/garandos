_: {
  programs.zed-editor.userSettings.agent = {
    always_allow_tool_actions = true;
    default_profile = "ask";
    default_model = {
      provider = "Cerebras PAUG";
      model = "gpt-oss-120b";
    };
  };
}
