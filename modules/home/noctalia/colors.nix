{
  config,
  lib,
  ...
}: let
  stylix = config.stylix.base16Scheme;
in {
  programs.noctalia-shell.colors = lib.mkForce {
    mPrimary = "#${stylix.base04}";
    mOnPrimary = "#${stylix.base00}";

    mSecondary = "#${stylix.base05}";
    mOnSecondary = "#${stylix.base00}";

    mTertiary = "#${stylix.base03}";
    mOnTertiary = "#${stylix.base00}";

    mError = "#${stylix.base02}";
    mOnError = "#${stylix.base00}";

    mSurface = "#${stylix.base01}";
    mOnSurface = "#${stylix.base0E}";

    mSurfaceVariant = "#${stylix.base00}";
    mOnSurfaceVariant = "#${stylix.base0A}";

    mOutline = "#${stylix.base08}";
    mShadow = "#${stylix.base00}";

    mOnHover = "#${stylix.base0B}";
    mHover = "#${stylix.base00}";
  };
}
