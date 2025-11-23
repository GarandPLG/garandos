_: {
  programs.zed-editor.userSettings.language_models.openai_compatible."Cerebras" = {
    api_url = "https://api.cerebras.ai/v1";
    available_models = [
      {
        name = "qwen-3-235b-a22b-instruct-2507";
        display_name = "Qwen 3 235B Instruct";
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
        name = "llama-3.3-70b";
        display_name = "Llama 3.3 70B";
        max_tokens = 65000;
        max_output_tokens = 8000;
        capabilities = {
          tools = true;
          images = true;
          parallel_tool_calls = true;
          prompt_cache_key = true;
        };
      }
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
    ];
  };
}
