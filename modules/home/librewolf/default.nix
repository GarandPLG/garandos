{
  pkgs,
  lib,
  config,
  ...
}: {
  options.librewolf.enable = lib.mkEnableOption "LibreWolf";

  config.programs.librewolf = lib.mkIf config.librewolf.enable {
    enable = true;
    package = pkgs.librewolf-bin;
    # nativeMessagingHosts = [pkgs.firefoxpwa];
    languagePacks = [
      "pl"
      "en-US"
    ];
    settings = {
      # LibreWolf settings
      "network.http.referer.XOriginPolicy" = 2;
      "privacy.resistFingerprinting.letterboxing" = true;
      "privacy.resistFingerprinting.autoDeclineNoUserInputCanvasPrompts" = true;
    };
    policies = {
      # Policies (about:policies#documentation)
    };
  };

  imports = [
    ./profiles
  ];
}
