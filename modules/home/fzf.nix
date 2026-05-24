_: {
  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
    enableBashIntegration = true;
    defaultOptions = [
      "--margin=1"
      "--layout=reverse"
      "--border=none"
      "--info='hidden'"
      "--header=''"
      "--prompt='/ '"
      "-i"
      "--no-bold"
      "--bind='enter:execute(nano {})'"
      "--preview='bat --style=numbers --color=always --line-range :500 {}'"
      "--preview-window=right:60%:wrap"
    ];
  };
}
