{
  lib,
  username,
  ...
}: {
  programs.noctalia-shell.settings.bar = lib.mkForce {
    barType = "simple";
    position = "top";
    monitors = [];
    density = "default";
    showOutline = false;
    showCapsule = true;
    capsuleOpacity = 0;
    backgroundOpacity = 0;
    useSeparateOpacity = true;
    floating = false;
    marginVertical = 4;
    marginHorizontal = 4;
    frameThickness = 8;
    frameRadius = 12;
    outerCorners = true;
    hideOnOverview = false;
    displayMode = "always_visible";
    autoHideDelay = 500;
    autoShowDelay = 150;
    screenOverrides = [];
    widgets = {
      left = (import ./widgets/left.nix {}).left;
      center = (import ./widgets/center.nix {}).center;
      right = (import ./widgets/right.nix {inherit username;}).right;
    };
  };
}
