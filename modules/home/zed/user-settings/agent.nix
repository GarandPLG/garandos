_: {
  programs.zed-editor.userSettings.agent = {
    default_profile = "ask";
    default_model = {
      provider = "Cerebras PAUG";
      model = "gpt-oss-120b";
    };
  };
}
