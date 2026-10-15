{
  pkgs,
  # lib,
  ...
}: let
  skillPath = ".agents/skills";
  skillCodexPath = ".codex/skills";
  urlDomain = "https://raw.githubusercontent.com";
  refs = "refs/heads/main/skills";

  ponytailSkill = pkgs.fetchurl {
    url = "${urlDomain}/DietrichGebert/ponytail/${refs}/ponytail/SKILL.md";
    sha256 = "sha256-IiTh4N3bHhJtER4HYPEFEo1g9Ro703TiPA5Tigv7k3s=";
  };

  cavemanSkill = pkgs.fetchurl {
    url = "${urlDomain}/JuliusBrussee/caveman/${refs}/caveman/SKILL.md";
    sha256 = "sha256-447Gcey+5HziNBkL4SYV2vYKxmfXdbc0DUnQf09jx7w=";
  };
in {
  home.file = {
    "${skillPath}/ponytail/SKILL.md".source = ponytailSkill;
    "${skillPath}/caveman/SKILL.md".source = cavemanSkill;
    "${skillCodexPath}/ponytail/SKILL.md".source = ponytailSkill;
    "${skillCodexPath}/caveman/SKILL.md".source = cavemanSkill;
  };
}
