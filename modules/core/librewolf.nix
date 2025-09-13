{
  pkgs,
  lib,
  inputs,
  system,
  host,
  ...
}: {
  programs = {
    librewolf = {
      enable = true;
      package = pkgs.librewolf;
      # nativeMessagingHosts = [pkgs.firefoxpwa];
      languagePacks = [
        "pl"
        "en-US"
      ];
      profiles = {
        "${host}" = {
          id = 0;
          isDefault = true;
          name = "${host}";
          settings = lib.mkDefault {
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
          search = {
            default = "garand's-search";
            privateDefault = "garand's-search";
            force = true;
            engines = {
              "garand's-search" = {
                definedAliases = ["@g"];
                urls = [{template = "https://search.garandplg.com/search?q={searchTerms}";}];
                suggestUrl = "https://search.garandplg.com/autocompleter?q={searchTerms}";
              };
              "youtube" = {
                definedAliases = ["@yt"];
                urls = [
                  {
                    template = "https://www.youtube.com/results";
                    params = [
                      {
                        name = "search_query";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "wikipedia-pl" = {
                definedAliases = ["@w"];
                urls = [
                  {
                    template = "https://pl.wikipedia.org/w/index.php";
                    params = [
                      {
                        name = "search";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "stackoverflow" = {
                definedAliases = ["@so"];
                urls = [
                  {
                    template = "https://stackoverflow.com/search";
                    params = [
                      {
                        name = "q";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "nix-packages" = {
                definedAliases = ["@np"];
                icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
                urls = [
                  {
                    template = "https://search.nixos.org/packages?channel=unstable";
                    params = [
                      {
                        name = "query";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "nix-options" = {
                definedAliases = ["@no"];
                icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
                urls = [
                  {
                    template = "https://search.nixos.org/options";
                    params = [
                      {
                        name = "query";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "nix-wiki" = {
                definedAliases = ["@nw"];
                icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
                urls = [
                  {
                    template = "https://wiki.nixos.org/w/index.php";
                    params = [
                      {
                        name = "search";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "home-manager-option" = {
                definedAliases = ["@hmo"];
                icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
                urls = [
                  {
                    template = "https://home-manager-options.extranix.com/release=master";
                    params = [
                      {
                        name = "query";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "eneba" = {
                definedAliases = ["@en"];
                icon = "https://static.eneba.games/branding/v2/logoFull.svg";
                urls = [
                  {
                    template = "https://www.eneba.com/pl/store/all";
                    params = [
                      {
                        name = "text";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "kinguin" = {
                definedAliases = ["@ki"];
                icon = "https://static.kinguin.net/media/images/other/kinguin-mobile-logo.svg";
                urls = [
                  {
                    template = "https://www.kinguin.net/listing?active=1&hideUnavailable=0&type=kinguin";
                    params = [
                      {
                        name = "phrase";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "instant-gaming" = {
                definedAliases = ["@ig"];
                icon = "https://asset.brandfetch.io/idCbLj4uOg/idGS61T0FV.jpeg";
                urls = [
                  {
                    template = "https://www.instant-gaming.com/pl/search/";
                    params = [
                      {
                        name = "q";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "morele" = {
                definedAliases = ["@mo"];
                icon = "https://www.morele.net/static/img/shop/logo/image-logo-morele.svg";
                urls = [
                  {
                    template = "https://www.morele.net/wyszukiwarka/";
                    params = [
                      {
                        name = "q";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "x-kom" = {
                definedAliases = ["@xk"];
                icon = "https://assets.x-kom.pl/public-spa/xkom/75062cb4b48a8510.svg";
                urls = [
                  {
                    template = "https://www.x-kom.pl/szukaj";
                    params = [
                      {
                        name = "q";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "komputronik" = {
                definedAliases = ["@kp"];
                icon = "https://front.komputronik.pl/front-static/komputronik.Ceqagame-a.svg";
                urls = [
                  {
                    template = "https://www.komputronik.pl/search/category/1";
                    params = [
                      {
                        name = "query";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "allegro" = {
                definedAliases = ["@al"];
                icon = "";
                urls = [
                  {
                    template = "https://allegro.pl/listing";
                    params = [
                      {
                        name = "string";
                        value = "{searchTerms}";
                      }
                    ];
                  }
                ];
              };
              "google".metaData.hidden = true;
              "bing".metaData.hidden = true;
              "wikipedia".metaData.hidden = true;
            };
          };
          extensions = {
            # about:debugging#/runtime/this-firefox Przydatne do wyszukiwania ID rozszerzenia
            # force = true;
            packages = with inputs.firefox-addons.packages.${system}; [
              bitwarden
              floccus
              ublock-origin
              sponsorblock
              darkreader
              # flagfox
              hoppscotch
              return-youtube-dislikes
              sponsorblock
              # pwas-for-firefox
              mtab
              # MTAB_SAVE_FORMAT_JTIyJTdCJTVDJTIyb3B0aW9ucyU1QyUyMiUzQSU3QiU1QyUyMnNob3dPcHRpb25zQnV0dG9uJTVDJTIyJTNBdHJ1ZSU3RCUyQyU1QyUyMnVzZXIlNUMlMjIlM0ElN0IlNUMlMjJuYW1lJTVDJTIyJTNBJTVDJTIyR2FyYW5kX1BMRyU1QyUyMiU3RCUyQyU1QyUyMnRpdGxlJTVDJTIyJTNBJTdCJTVDJTIyZGVmYXVsdFRpdGxlJTVDJTIyJTNBJTVDJTIyTm93YSUyMHphayVDNSU4MmFka2ElNUMlMjIlMkMlNUMlMjJkeW5hbWljJTVDJTIyJTNBJTdCJTVDJTIyZW5hYmxlZCU1QyUyMiUzQXRydWUlN0QlMkMlNUMlMjJmYXZpY29uVHlwZSU1QyUyMiUzQSU1QyUyMmN1c3RvbSU1QyUyMiU3RCUyQyU1QyUyMm1lc3NhZ2UlNUMlMjIlM0ElN0IlNUMlMjJlbmFibGVkJTVDJTIyJTNBZmFsc2UlMkMlNUMlMjJmb250JTVDJTIyJTNBJTdCJTVDJTIydHlwZSU1QyUyMiUzQSU1QyUyMmRlZmF1bHQlNUMlMjIlMkMlNUMlMjJjdXN0b20lNUMlMjIlM0ElNUMlMjIlNUMlMjIlN0QlMkMlNUMlMjJ0ZXh0Q29sb3IlNUMlMjIlM0ElNUMlMjIlMjNmZmZmZmYlNUMlMjIlMkMlNUMlMjJ0ZXh0U2l6ZSU1QyUyMiUzQTMuNzUlMkMlNUMlMjJ0eXBlJTVDJTIyJTNBJTVDJTIydGltZS0yNCU1QyUyMiUyQyU1QyUyMmN1c3RvbVRleHQlNUMlMjIlM0ElNUMlMjJ5b3VyJTIwY3VzdG9tJTIwdGV4dCU1QyUyMiUyQyU1QyUyMndlYXRoZXIlNUMlMjIlM0ElN0IlNUMlMjJ1bml0c1R5cGUlNUMlMjIlM0ElNUMlMjJmJTVDJTIyJTdEJTdEJTJDJTVDJTIyd2FsbHBhcGVyJTVDJTIyJTNBJTdCJTVDJTIydHlwZSU1QyUyMiUzQSU1QyUyMmZpbGVVcGxvYWQlNUMlMjIlMkMlNUMlMjJlbmFibGVkJTVDJTIyJTNBdHJ1ZSUyQyU1QyUyMnVybCU1QyUyMiUzQSU1QyUyMi4lMkZ3YWxscGFwZXJzJTJGYmctMS5wbmclNUMlMjIlMkMlNUMlMjJyZXNpemUlNUMlMjIlM0ElN0IlNUMlMjJ3JTVDJTIyJTNBMTkyMCUyQyU1QyUyMmglNUMlMjIlM0ExMDgwJTdEJTdEJTJDJTVDJTIydWklNUMlMjIlM0ElN0IlNUMlMjJzdHlsZSU1QyUyMiUzQSU1QyUyMmdsYXNzJTVDJTIyJTJDJTVDJTIyZ2xhc3NDb2xvciU1QyUyMiUzQSU1QyUyMiUyM2ZmZmZmZjIwJTVDJTIyJTJDJTVDJTIyYmx1clN0cmVuZ3RoJTVDJTIyJTNBJTVDJTIyMzJweCU1QyUyMiUyQyU1QyUyMmZvcmVncm91bmRDb2xvciU1QyUyMiUzQSU1QyUyMiUyMzI2MjYyNiU1QyUyMiUyQyU1QyUyMmJhY2tncm91bmRDb2xvciU1QyUyMiUzQSU1QyUyMiUyMzE3MTcxNyU1QyUyMiUyQyU1QyUyMmhpZ2hsaWdodENvbG9yJTVDJTIyJTNBJTVDJTIyJTIzZmZmZmZmMjAlNUMlMjIlMkMlNUMlMjJjb3JuZXJTdHlsZSU1QyUyMiUzQSU1QyUyMnJvdW5kJTVDJTIyJTJDJTVDJTIyY3VzdG9tQ1NTJTVDJTIyJTNBJTVDJTIyJTJGKiUyMGlucHV0JTIwY3VzdG9tJTIwY3NzLi4uJTIwKiUyRiU1QyUyMiU3RCUyQyU1QyUyMmFuaW1hdGlvbnMlNUMlMjIlM0ElN0IlNUMlMjJlbmFibGVkJTVDJTIyJTNBdHJ1ZSUyQyU1QyUyMmJvb2ttYXJrVGltaW5nJTVDJTIyJTNBJTVDJTIybGVmdCU1QyUyMiUyQyU1QyUyMmluaXRpYWxUeXBlJTVDJTIyJTNBJTVDJTIyYW5pbWF0ZS1kb3duLWZhbGwlNUMlMjIlMkMlNUMlMjJzZWFyY2hUeXBlJTVDJTIyJTNBJTVDJTIyYW5pbWF0ZS1wYWdlLXNocmluayU1QyUyMiUyQyU1QyUyMmJvb2ttYXJrVHlwZSU1QyUyMiUzQSU1QyUyMmFuaW1hdGUtcGFnZS11cCU1QyUyMiU3RCUyQyU1QyUyMnNlYXJjaCU1QyUyMiUzQSU3QiU1QyUyMmVuYWJsZWQlNUMlMjIlM0F0cnVlJTJDJTVDJTIyZm9udCU1QyUyMiUzQSU3QiU1QyUyMnR5cGUlNUMlMjIlM0ElNUMlMjJkZWZhdWx0JTVDJTIyJTJDJTVDJTIyY3VzdG9tJTVDJTIyJTNBJTVDJTIyJTVDJTIyJTdEJTJDJTVDJTIydGV4dENvbG9yJTVDJTIyJTNBJTVDJTIyJTIzMDAwMDAwJTVDJTIyJTJDJTVDJTIycGxhY2Vob2xkZXJUZXh0JTVDJTIyJTNBJTVDJTIyU3p1a2FqLi4uJTVDJTIyJTJDJTVDJTIyYm9va21hcmtQbGFjZWhvbGRlclRleHQlNUMlMjIlM0ElNUMlMjJaYWslQzUlODIlQzQlODVka2kuLi4lNUMlMjIlMkMlNUMlMjJwbGFjZWhvbGRlclRleHRDb2xvciU1QyUyMiUzQSU1QyUyMiUyMzAxMDEwMCU1QyUyMiUyQyU1QyUyMnNlYXJjaEljb25Db2xvciU1QyUyMiUzQSU1QyUyMiUyMzE0YjhhNiU1QyUyMiUyQyU1QyUyMmJvb2ttYXJrSWNvbkNvbG9yJTVDJTIyJTNBJTVDJTIyJTIzM2I4MmY2JTVDJTIyJTJDJTVDJTIyc2VsZWN0SWNvbkNvbG9yJTVDJTIyJTNBJTVDJTIyJTIzZjU5ZTBiJTVDJTIyJTJDJTVDJTIyZW5naW5lJTVDJTIyJTNBJTVDJTIyZHVja2R1Y2tnbyU1QyUyMiUyQyU1QyUyMnVzZUN1c3RvbUVuZ2luZSU1QyUyMiUzQXRydWUlMkMlNUMlMjJjdXN0b21FbmdpbmVVUkwlNUMlMjIlM0ElNUMlMjJodHRwcyUzQSUyRiUyRnNlYXJjaC5nYXJhbmRwbGcuY29tJTJGc2VhcmNoJTNGcSUzRCU3QiU3RCU1QyUyMiUyQyU1QyUyMmZvY3VzZWRCb3JkZXJDb2xvciU1QyUyMiUzQSU1QyUyMiUyMzBlYTVlOSU1QyUyMiUyQyU1QyUyMmFzc2lzdCU1QyUyMiUzQSU3QiU1QyUyMmRhdGUlNUMlMjIlM0F0cnVlJTJDJTVDJTIybWF0aCU1QyUyMiUzQXRydWUlMkMlNUMlMjJkZWZpbml0aW9ucyU1QyUyMiUzQXRydWUlMkMlNUMlMjJjb252ZXJzaW9ucyU1QyUyMiUzQXRydWUlN0QlN0QlMkMlNUMlMjJob3RrZXlzJTVDJTIyJTNBJTdCJTVDJTIyZW5hYmxlZCU1QyUyMiUzQWZhbHNlJTJDJTVDJTIyYWN0aXZhdGlvbktleSU1QyUyMiUzQSU1QyUyMiUyMCU1QyUyMiUyQyU1QyUyMmNsb3NlUGFnZUtleSU1QyUyMiUzQSU1QyUyMnglNUMlMjIlMkMlNUMlMjJzZWFyY2hCb29rbWFya3NLZXklNUMlMjIlM0ElNUMlMjJiJTVDJTIyJTdEJTJDJTVDJTIyYm9va21hcmtzJTVDJTIyJTNBJTdCJTVDJTIydHlwZSU1QyUyMiUzQSU1QyUyMmRlZmF1bHQtYmxvY2t5JTVDJTIyJTJDJTVDJTIybnVtYmVyS2V5cyU1QyUyMiUzQWZhbHNlJTJDJTVDJTIydXNlckRlZmluZWRDb2xzJTVDJTIyJTNBbnVsbCUyQyU1QyUyMmxpbmVPcmllbnRhdGlvbiU1QyUyMiUzQSU1QyUyMnRvcCU1QyUyMiUyQyU1QyUyMnVzZXJEZWZpbmVkJTVDJTIyJTNBJTVCJTdCJTVDJTIydHlwZSU1QyUyMiUzQSU1QyUyMmJvb2ttYXJrJTVDJTIyJTJDJTVDJTIybmFtZSU1QyUyMiUzQSU1QyUyMmdpdGh1YiU1QyUyMiUyQyU1QyUyMnVybCU1QyUyMiUzQSU1QyUyMmh0dHBzJTNBJTJGJTJGZ2l0aHViLmNvbSU1QyUyMiUyQyU1QyUyMmNvbG9yJTVDJTIyJTNBJTVDJTIyJTIzNjM2NmYxJTVDJTIyJTJDJTVDJTIyaWNvblR5cGUlNUMlMjIlM0ElNUMlMjJyaS1naXRodWItZmlsbCU1QyUyMiUyQyU1QyUyMmljb25Db2xvciU1QyUyMiUzQSU1QyUyMiUyM2ZmZmZmZiU1QyUyMiUyQyU1QyUyMmZpbGwlNUMlMjIlM0ElNUMlMjIlNUMlMjIlN0QlMkMlN0IlNUMlMjJ0eXBlJTVDJTIyJTNBJTVDJTIyYm9va21hcmslNUMlMjIlMkMlNUMlMjJuYW1lJTVDJTIyJTNBJTVDJTIyeW91dHViZSU1QyUyMiUyQyU1QyUyMnVybCU1QyUyMiUzQSU1QyUyMmh0dHBzJTNBJTJGJTJGeW91dHViZS5jb20lNUMlMjIlMkMlNUMlMjJjb2xvciU1QyUyMiUzQSU1QyUyMiUyM2Y0M2Y1ZSU1QyUyMiUyQyU1QyUyMmljb25UeXBlJTVDJTIyJTNBJTVDJTIycmkteW91dHViZS1maWxsJTVDJTIyJTJDJTVDJTIyaWNvbkNvbG9yJTVDJTIyJTNBJTVDJTIyJTIzZmZmZmZmJTVDJTIyJTJDJTVDJTIyZmlsbCU1QyUyMiUzQSU1QyUyMiU1QyUyMiU3RCUyQyU3QiU1QyUyMnR5cGUlNUMlMjIlM0ElNUMlMjJib29rbWFyayU1QyUyMiUyQyU1QyUyMm5hbWUlNUMlMjIlM0ElNUMlMjJyZWRkaXQlNUMlMjIlMkMlNUMlMjJ1cmwlNUMlMjIlM0ElNUMlMjJodHRwcyUzQSUyRiUyRnd3dy5yZWRkaXQuY29tJTVDJTIyJTJDJTVDJTIyY29sb3IlNUMlMjIlM0ElNUMlMjIlMjNmOTczMTYlNUMlMjIlMkMlNUMlMjJpY29uVHlwZSU1QyUyMiUzQSU1QyUyMnJpLXJlZGRpdC1maWxsJTVDJTIyJTJDJTVDJTIyaWNvbkNvbG9yJTVDJTIyJTNBJTVDJTIyJTIzZmZmZmZmJTVDJTIyJTJDJTVDJTIyZmlsbCU1QyUyMiUzQSU1QyUyMiU1QyUyMiU3RCUyQyU3QiU1QyUyMnR5cGUlNUMlMjIlM0ElNUMlMjJib29rbWFyayU1QyUyMiUyQyU1QyUyMm5hbWUlNUMlMjIlM0ElNUMlMjJsb2NhbGhvc3QlNUMlMjIlMkMlNUMlMjJ1cmwlNUMlMjIlM0ElNUMlMjJodHRwJTNBJTJGJTJGbG9jYWxob3N0JTNBMzAwMCU1QyUyMiUyQyU1QyUyMmNvbG9yJTVDJTIyJTNBJTVDJTIyJTIzMTRiOGE2JTVDJTIyJTJDJTVDJTIyaWNvblR5cGUlNUMlMjIlM0ElNUMlMjJyaS1nbG9iYWwtZmlsbCU1QyUyMiUyQyU1QyUyMmljb25Db2xvciU1QyUyMiUzQSU1QyUyMiUyM2ZmZmZmZiU1QyUyMiUyQyU1QyUyMmZpbGwlNUMlMjIlM0ElNUMlMjIlNUMlMjIlN0QlNUQlMkMlNUMlMjJkZWZhdWx0QmxvY2t5Q29scyU1QyUyMiUzQTUlMkMlNUMlMjJkZWZhdWx0QmxvY2t5Q29sb3JUeXBlJTVDJTIyJTNBJTVDJTIycmFuZG9tJTVDJTIyJTJDJTVDJTIyZGVmYXVsdEJsb2NreUNvbG9yJTVDJTIyJTNBJTVDJTIyJTIzZmZmZmZmJTVDJTIyJTJDJTVDJTIyZGVmYXVsdEZhdmljb25Tb3VyY2UlNUMlMjIlM0ElNUMlMjJkdWNrZHVja2dvJTVDJTIyJTJDJTVDJTIyc2hvd0Jvb2ttYXJrTmFtZXMlNUMlMjIlM0F0cnVlJTJDJTVDJTIyYm9va21hcmtzTG9jYXRpb25GaXJlZm94JTVDJTIyJTNBJTVDJTIydG9vbGJhciU1QyUyMiU3RCUyQyU1QyUyMmV4dHJhcyU1QyUyMiUzQSU3QiU1QyUyMnNub3clNUMlMjIlM0ElN0IlNUMlMjJlbmFibGVkJTVDJTIyJTNBJTVDJTIyb2ZmJTVDJTIyJTdEJTdEJTdEJTIy
            ];
          };
          # bookmarks = {
          #   force = true;
          #   settings = [];
          # };
        };
      };
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
}
