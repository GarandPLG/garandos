{config, ...}: {
  home.file.".peaclock/config/digital" = {
    # recursive = true;
    text = let
      colors = config.stylix.base16Scheme;
    in ''
      # peaclock
      # digital config
      #
      # For more information, refer to the 'Configuration' and 'Commands'
      # sections of the programs help output with '--help' or '-h'.

      # -----------------------------------------------------------------------------
      # general
      # -----------------------------------------------------------------------------

      block 2 1
      padding 2 1
      margin 2 1
      ratio 2 1
      date-padding 1
      locale 'pl_PL.utf8'
      timezone 'Europe/Warsaw'
      date '%a %b %d %p'
      mode stopwatch
      view digital
      toggle padding
      stopwatch start
      timer 10m:0s
      timer-exec 'notify-send -a peaclock "timer complete"'
      rate-input 50
      rate-refresh 250
      rate-status 5000

      # -----------------------------------------------------------------------------
      # toggles
      # -----------------------------------------------------------------------------
      set hour-24 on
      set seconds on
      set date on
      set auto-size on
      set auto-ratio on

      # -----------------------------------------------------------------------------
      # styles
      # -----------------------------------------------------------------------------
      style active-fg #${colors.base05}
      style inactive-fg #${colors.base03}
      style colon-fg #${colors.base07}
      style active-bg #${colors.base0E}
      style inactive-bg #${colors.base00}
      style colon-bg #${colors.base00}
      style date #${colors.base04}
      style background #${colors.base00}
      style text #${colors.base05}
      style prompt #${colors.base09}
      style success #${colors.base0A}
      style error #${colors.base02}
    '';
  };
}
