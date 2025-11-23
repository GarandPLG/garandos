{host, ...}: let
  inherit (import ../../hosts/${host}/variables.nix) gitUsername gitEmail;
in {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "${gitUsername}";
        email = "${gitEmail}";
      };
      push.default = "simple";
      credential.helper = "cache --timeout=7200";
      init.defaultBranch = "main";
      log = {
        decorate = "full";
        date = "iso";
      };
      merge.conflictStyle = "diff3";
    };
  };
}
