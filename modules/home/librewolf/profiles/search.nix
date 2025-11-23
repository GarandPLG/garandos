{
  pkgs,
  host,
  ...
}: {
  programs.librewolf.profiles."${host}".search = {
    default = "garand's-search";
    privateDefault = "garand's-search";
    force = true;
    engines = {
      "garand's-search" = {
        definedAliases = ["@g"];
        urls = [{template = "https://search.garandplg.com/search?q={searchTerms}";}];
        # suggestUrl = "https://search.garandplg.com/autocompleter?q={searchTerms}"; Not implemented in home-manager ☹️
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
            template = "https://home-manager-options.extranix.com/?query={searchTerms}&release=master";
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

      "google".metaData.hidden = true;
      "bing".metaData.hidden = true;
      "perplexity".metaData.hidden = true;
      "wolnelektury-pl".metaData.hidden = true;
      "policy-DuckDuckGo Lite".metaData.hidden = true;
      "policy-MetaGer".metaData.hidden = true;
      "policy-Mojeek".metaData.hidden = true;
      "policy-SearXNG - searx.be".metaData.hidden = true;
      "policy-StartPage".metaData.hidden = true;

      "allegro-pl".metaData.alias = "@al";
    };
  };
}
