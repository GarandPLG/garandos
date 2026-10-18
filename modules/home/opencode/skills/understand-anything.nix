{pkgs, ...}: let
  understand-anything-src = pkgs.fetchFromGitHub {
    name = "understand-anything";
    owner = "Egonex-AI";
    repo = "Understand-Anything";
    tag = "v2.9.0";
    sha256 = "sha256-nECfbp0vyFZRZX0Zg2s4ga/kYSCihJxYt9lxUHLGmFA=";
  };
  understand-anything = "${understand-anything-src}/understand-anything-plugin/skills";
in {
  programs.opencode.skills = {
    understand = "${understand-anything}/understand";
    understand-chat = "${understand-anything}/understand-chat";
    understand-dashboard = "${understand-anything}/understand-dashboard";
    understand-diff = "${understand-anything}/understand-diff";
    understand-domain = "${understand-anything}/understand-domain";
    understand-explain = "${understand-anything}/understand-explain";
    understand-figma = "${understand-anything}/understand-figma";
    understand-knowledge = "${understand-anything}/understand-knowledge";
    understand-onboard = "${understand-anything}/understand-onboard";
  };
}
