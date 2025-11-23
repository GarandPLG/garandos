{
  config,
  lib,
  ...
}: let
  accent = "#${config.lib.stylix.colors.base0D}";
in {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      format = lib.concatStrings [
        "$nix_shell"
        "$hostname"
        "$directory"
        "$git_branch"
        "$git_state"
        "$git_status"
        "$fill"
        "$python"
        "$nodejs"
        "$rust"
        "$docker_context"
        "$cmd_duration"
        "$line_break"
        "$character"
      ];

      directory = {
        style = "bold fg:dark_blue";
        format = "[$path ]($style)";
        truncation_length = 3;
        truncation_symbol = "…/";
        truncate_to_repo = false;
        substitutions = {
          "Documents" = "󰈙 ";
          "Downloads" = " ";
          "Music" = " ";
          "Pictures" = " ";
          "Projects" = " ";
          "nix" = " ";
          "nixos" = " ";
        };
      };

      character = {
        success_symbol = "[ ](${accent})";
        error_symbol = "[ ](red)";
      };

      nix_shell = {
        format = "[$symbol]($style) ";
        symbol = " ";
        style = "";
      };

      git_branch = {
        style = "fg:green";
        symbol = " ";
        format = "[on](white) [$symbol$branch ]($style)";
      };

      git_status = {
        style = "fg:green";
        format = "([$all_status$ahead_behind]($style) )";
        conflicted = "";
        renamed = "";
        deleted = "";
        stashed = "≡";
      };

      git_state = {
        format = "([$state( $progress_current/$progress_total)]($style)) ";
        style = "bright-black";
      };

      fill = {
        symbol = " ";
      };

      python = {
        style = "teal";
        symbol = " ";
        format = "[\${symbol}\${pyenv_prefix}(\${version} )(\($virtualenv\) )]($style)";
        pyenv_version_name = true;
        pyenv_prefix = "";
      };

      nodejs = {
        style = "blue";
        symbol = " ";
      };

      rust = {
        style = "orange";
        symbol = " ";
      };

      docker_context = {
        symbol = " ";
        style = "fg:#06969A";
        format = "[$symbol]($style) $path";
        detect_files = [
          "docker-compose.yml"
          "docker-compose.yaml"
          "Dockerfile"
        ];
        detect_extensions = ["Dockerfile"];
      };

      cmd_duration = {
        min_time = 500;
        style = "fg:gray";
        format = "[$duration]($style)";
      };
    };
  };
}
