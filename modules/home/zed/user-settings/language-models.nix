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
          name = "zai-glm-4.7";
          display_name = "Z.ai GLM 4.7";
          max_tokens = 64000;
          max_output_tokens = 40000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = true;
            prompt_cache_key = true;
          };
        }
        {
          name = "llama3.1-8b";
          display_name = "Llama 3.1 8B";
          max_tokens = 8000;
          max_output_tokens = 8000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = true;
            prompt_cache_key = true;
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
          name = "qwen-3-32b";
          display_name = "Qwen 3 32B";
          max_tokens = 65000;
          max_output_tokens = 8000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = false;
            prompt_cache_key = true;
          };
        }
        {
          name = "qwen-3-235b-a22b-instruct-2507";
          display_name = "Qwen 3 235B Instruct";
          max_tokens = 65000;
          max_output_tokens = 32000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = false;
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
          name = "zai-glm-4.7";
          display_name = "Z.ai GLM 4.7";
          max_tokens = 131000;
          max_output_tokens = 40000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = true;
            prompt_cache_key = true;
          };
        }
        {
          name = "llama3.1-8b";
          display_name = "Llama 3.1 8B";
          max_tokens = 32000;
          max_output_tokens = 8000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = true;
            prompt_cache_key = true;
          };
        }
        {
          name = "llama-3.3-70b";
          display_name = "Llama 3.3 70B";
          max_tokens = 128000;
          max_output_tokens = 65000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = true;
            prompt_cache_key = true;
          };
        }
        {
          name = "qwen-3-32b";
          display_name = "Qwen 3 32B";
          max_tokens = 131000;
          max_output_tokens = 8000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = false;
            prompt_cache_key = true;
          };
        }
        {
          name = "qwen-3-235b-a22b-instruct-2507";
          display_name = "Qwen 3 235B Instruct";
          max_tokens = 131000;
          max_output_tokens = 40000;
          capabilities = {
            tools = true;
            images = true;
            parallel_tool_calls = false;
            prompt_cache_key = true;
          };
        }
      ];
    };
  };
}
