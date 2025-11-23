{
  lib,
  host,
  ...
}: {
  programs.librewolf.profiles."${host}".settings = lib.mkForce {
    # Preferences (about:config)
    "general.useragent.locale" = "pl";
    "intl.locale.requested" = "pl,en-US";
    "intl.accept_languages" = "pl,en-US";

    "extensions.autoDisableScopes" = 0;

    "font.default.x-western" = "FiraCode Nerd Font";
    "font.name.monospace.x-western" = "FiraCode Nerd Font Mono";
    "font.name.sans-serif.x-western" = "FiraCode Nerd Font Propo";
    "font.name.serif.x-western" = "FiraCode Nerd Font";

    "layout.css.prefers-color-scheme.content-override" = 0;
    "layout.css.font-visibility" = 1;

    "browser.tabs.insertRelatedAfterCurrent" = true;
    "browser.sessionstore.resume_from_crash" = true;
    "browser.sessionstore.resume_session_once" = true;
    "browser.toolbars.bookmarks.visibility" = "never";

    "browser.search.update" = true;

    "sidebar.main.tools" = "history,bookmarks";
    "sidebar.revamp" = true;
    "sidebar.verticalTabs" = true;

    "browser.eme.ui.enabled" = true;
    "media.eme.enabled" = true;

    "privacy.donottrackheader.enabled" = true;
    "privacy.clearOnShutdown.history" = true;

    "network.trr.mode" = 3;
    "network.trr.uri" = "https://dns.mullvad.net/dns-query";
  };
}
