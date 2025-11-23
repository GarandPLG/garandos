{pkgs}:
pkgs.writeShellScriptBin "web-search" ''
  # check if rofi is already running
  if pidof rofi > /dev/null; then
    pkill rofi
  fi

  declare -A URLS

  URLS=(
    ["  Search"]="https://search.garandplg.com/search?q="
    ["❄️  Nix Unstable Packages"]="https://search.nixos.org/packages?channel=unstable&query="
    ["❄️  Nix Options"]="https://search.nixos.org/options?query="
    ["❄️  Nix Wiki"]="https://wiki.nixos.org/w/index.php?search="
    ["❄️  Home Manager Options"]="https://home-manager-options.extranix.com/release=master?query="
    ["  Kalkulator walutowy EUR"]="https://www.money.pl/pieniadze/kalkulator/?currencyFrom=EUR&currencyTo=PLN&amount="
    ["\$  Kalkulator walutowy USD"]="https://www.money.pl/pieniadze/kalkulator/?currencyFrom=USD&currencyTo=PLN&amount="
    ["  YouTube"]="https://www.youtube.com/results?search_query="
    ["  Wikipedia PL"]="https://pl.wikipedia.org/w/index.php?search="
    ["  StackOverflow"]="https://stackoverflow.com/search?q="
    ["  Eneba"]="https://www.eneba.com/pl/store/all?text="
    ["  Kinguin"]="https://www.kinguin.net/listing?active=1&hideUnavailable=0&type=kinguin?phrase="
    ["  Instant Gaming"]="https://www.instant-gaming.com/pl/search/?q="
    ["  Morele"]="https://www.morele.net/wyszukiwarka/?q="
    ["  X-kom"]="https://www.x-kom.pl/szukaj?q="
    ["  Komputrnik"]="https://www.komputronik.pl/search/category/1?q="
    ["  Allegro"]="https://allegro.pl/listing?string="
  )

  # List for rofi
  gen_list() {
    for i in "''${!URLS[@]}"
    do
      echo "$i"
    done
  }

  main() {
    # Pass the list to rofi
    platform=$( (gen_list) | ${pkgs.rofi}/bin/rofi -dmenu -config ~/.config/rofi/config-long.rasi )

    if [[ -n "$platform" ]]; then
      query=$( (echo ) | ${pkgs.rofi}/bin/rofi -dmenu -config ~/.config/rofi/config-long.rasi )

      if [[ -n "$query" ]]; then
        url=''${URLS[$platform]}$query
        xdg-open "$url"
      else
        exit
      fi
    else
      exit
    fi
  }

   main

   exit 0
''
