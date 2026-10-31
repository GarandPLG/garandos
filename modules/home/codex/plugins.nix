{pkgs, ...}: let
  ponytail = pkgs.fetchFromGitHub {
    name = "ponytail";
    owner = "DietrichGebert";
    repo = "ponytail";
    tag = "v5.3.3";
    sha256 = "sha256-CY0EifTY0UVc6/FPGVJjEfYEf/8QLsINQmoYYKZYh98=";
  };

  context-mode = pkgs.fetchFromGitHub {
    name = "context-mode";
    owner = "mksglu";
    repo = "context-mode";
    tag = "v1.0.169";
    sha256 = "sha256-1pV56ZB2aqod+C0kb5myuiWLAJ7+opiaurwZZ3BGKYk=";
  };

  understand-anything-src = pkgs.fetchFromGitHub {
    name = "understand-anything";
    owner = "Egonex-AI";
    repo = "Understand-Anything";
    tag = "v2.9.0";
    sha256 = "sha256-nECfbp0vyFZRZX0Zg2s4ga/kYSCihJxYt9lxUHLGmFA=";
  };

  understand-anything =
    pkgs.runCommand "understand-anything" {
      version = "2.9.0";
      nativeBuildInputs = [pkgs.jq];
    } ''
      mkdir -p "$out"
      cp -r ${understand-anything-src}/understand-anything-plugin/. "$out/"
      mkdir -p "$out/.codex-plugin"
      jq '. + {skills: "./skills/", hooks: "./hooks/hooks.json"}' \
        "$out/.claude-plugin/plugin.json" > "$out/.codex-plugin/plugin.json"
      test -f "$out/skills/understand/SKILL.md"
      test -f "$out/hooks/hooks.json"
    '';
in {
  programs.codex = {
    plugins = [ponytail understand-anything context-mode];
    marketplaces = {
      ponytail = ponytail;
      Understand-Anything = understand-anything-src;
      context-mode = context-mode;
    };
  };
}
