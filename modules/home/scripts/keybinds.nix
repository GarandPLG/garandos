{
  pkgs,
  username,
  ...
}: let
  desktopEntriesPath = "/home/${username}/.local/state/home-manager/gcroots/current-home/home-path/share/applications/";
in
  pkgs.writeShellScriptBin "list-keybinds" ''
    # check if rofi is already running
    if pidof rofi > /dev/null; then
      pkill rofi
    fi

    msg=' = Windows/Super/CAPS LOCK (Enter nie wykonuje skrótu)'
    keybinds=$(cat ~/.config/hypr/hyprland.conf | grep -E '^bind')

    # replace $modifier with SUPER and clean up paths
    display_keybinds=$(echo "$keybinds" | sed 's/\$modifier//g' | sed 's|${desktopEntriesPath}/||g')

    # remove "bind=" and "bindm=" prefixes
    display_keybinds=$(echo "$display_keybinds" | sed 's/^bind=//' | sed 's/^bindm=/🖱️/')

    # add + before CONTROL, SHIFT, ALT when they appear after removed $modifier
    display_keybinds=$(echo "$display_keybinds" | sed 's/ CONTROL/ + CONTROL/g' | sed 's/ SHIFT/ + SHIFT/g' | sed 's/ ALT/ + ALT/g')

    # replace commas: first comma -> " +", second comma -> " =", remaining commas -> " ->"
    display_keybinds=$(echo "$display_keybinds" | sed 's/,/ +/1' | sed 's/,/ =/1' | sed 's/,/ ->/g')

    # use rofi to display the keybinds with the modified content
    echo "$display_keybinds" | rofi -dmenu -i -config ~/.config/rofi/config-long.rasi -mesg "$msg"

  ''
