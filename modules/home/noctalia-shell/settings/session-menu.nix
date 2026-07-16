{lib, ...}: {
  programs.noctalia-shell.settings.sessionMenu = lib.mkForce {
    enableCountdown = false;
    countdownDuration = 10000;
    position = "center";
    showHeader = true;
    largeButtonsStyle = true;
    largeButtonsLayout = "grid";
    showNumberLabels = true;
    powerOptions = [
      {
        action = "lock";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
      {
        action = "suspend";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
      {
        action = "hibernate";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
      {
        action = "reboot";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
      {
        action = "logout";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
      {
        action = "shutdown";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
    ];
  };
}
