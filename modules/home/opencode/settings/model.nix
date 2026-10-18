_: {
  programs.opencode.settings = {
    model = "cerebras/gpt-oss-120b";
    small_model = "cerebras/qwen-3.8-27b";
    enabled_providers = ["cerebras"];
  };
}
