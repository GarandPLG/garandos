_: {
  programs.zed-editor.userSettings.language_models.openai_compatible = {
    "Cerebras FREE" = {
      api_url = "https://api.cerebras.ai/v1";
      available_models = [
        {
          name = "gpt-oss-120b";
          display_name = "OpenAI GPT OSS";
          max_tokens = 65000;
          max_output_tokens = 32000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = true;
            prompt_cache_key = false;
          };
        }
        {
          name = "qwen-3.8-27b";
          display_name = "Qwen 3.8 27B";
          max_tokens = 64000;
          max_output_tokens = 32000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = true;
            prompt_cache_key = true;
          };
        }
      ];
    };
    "Cerebras PAUG" = {
      api_url = "https://api.cerebras.ai/v1";
      available_models = [
        {
          name = "gpt-oss-120b";
          display_name = "OpenAI GPT OSS";
          max_tokens = 131000;
          max_output_tokens = 40000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = true;
            prompt_cache_key = false;
          };
        }
        {
          name = "qwen-3.8-27b";
          display_name = "Qwen 3.8 27B";
          max_tokens = 128000;
          max_output_tokens = 40000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = true;
            prompt_cache_key = true;
          };
        }
      ];
    };
  };
}
