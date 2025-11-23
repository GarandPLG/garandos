{pkgs, ...}: {
  programs.chromium = {
    enable = true;
    package = pkgs.ungoogled-chromium;
    # commandLineArgs = [ ];
    dictionaries = with pkgs; [
      hunspellDictsChromium.en_US
      # hunspellDictsChromium.pl_PL Jeśli się taka pojawi
    ];
  };

  imports = [
    ./extensions.nix
  ];
}
