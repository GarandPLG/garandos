{
  pkgs,
  gitUsername,
  ...
}: {
  programs.gh = {
    enable = true;
    package = pkgs.gh;
    hosts."github.com" = {
      git_protocol = "https";
      users = [
        "${gitUsername}"
      ];
      user = "${gitUsername}";
    };
    settings = {
      git_protocol = "https";
      version = "1";
    };
  };
}
