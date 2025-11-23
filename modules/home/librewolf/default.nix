{pkgs, ...}: {
  programs = {
    librewolf = {
      enable = true;
      package = pkgs.librewolf;
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
  };

  imports = [
    ./profiles
  ];
}
