{ pkgs, ... }:
{
  programs.chromium = {
    enable = true;
    package = pkgs.ungoogled-chromium;
    # commandLineArgs = [ ];
    dictionaries = with pkgs; [
      hunspellDictsChromium.en_US
      # hunspellDictsChromium.pl_PL Jeśli się taka pojawi
    ];
    extensions = [
      {
        id = "ocaahdebbfolfmndjeplogmgcagdmblk"; # Chromium Web Store
      }
      {
        id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; # Dark Reader
      }
      {
        id = "fnaicdffflnofjppbagibeoednhnbjhg"; # floccus bookmarks sync
      }
      {
        id = "amknoiejhlmhancpahfcfcfhllgkpbld"; # Hoppscotch Browser Extension
      }
      {
        id = "nngceckbapebfimnlniiiahkandclblb"; # Menedżer haseł Bitwarden
      }
      {
        id = "fdaphilojaklgkoocegabckfanjoacjg"; # mtab
      }
      {
        id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; # uBlock Origin
      }
    ];
  };
}
