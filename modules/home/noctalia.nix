{
  pkgs,
  inputs,
  system,
  lib,
  ...
}: let
  noctalia = inputs.noctalia.packages.${system}.default;
  configDir = "${noctalia}/share/noctalia-shell";
in {
  home = {
    packages = with pkgs; [
      noctalia
      quickshell # Ensure quickshell is available for the service
    ];
    activation.seedNoctaliaShellCode = lib.hm.dag.entryAfter ["writeBoundary"] ''
      set -eu
      DEST="$HOME/.config/quickshell/noctalia-shell"
      SRC="${configDir}"

      if [ ! -d "$DEST" ]; then
        $DRY_RUN_CMD mkdir -p "$HOME/.config/quickshell"
        $DRY_RUN_CMD cp -R "$SRC" "$DEST"
        $DRY_RUN_CMD chmod -R u+rwX "$DEST"
      fi
    '';
  };
}
