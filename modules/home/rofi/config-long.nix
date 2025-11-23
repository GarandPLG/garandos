_: {
  home.file.".config/rofi/config-long.rasi".text = ''
    @import "~/.config/rofi/config.rasi"
    * {
      font: "JetBrainsMono Nerd Font Mono 12";
    }
    window {
      width: 750px;
      border-radius: 10px;
    }
    mainbox {
      orientation: vertical;
      children: [ "inputbar", "listbox" ];
    }
    listview {
      lines: 13;
    }
    inputbar {
      padding: 55px 30px;
      background-color: transparent;
      background-image: url("~/Pictures/Wallpapers/attack-on-titan-mikasa-ackerman.jpg", width);
      text-color: @foreground;
      children: [ "textbox-prompt-colon", "entry" ];
    }
    textbox-prompt-colon {
      padding: 12px 20px;
      border-radius: 100%;
      background-color: @bg-alt;
      text-color: @foreground;
    }
    entry {
      expand: true;
      padding: 12px 16px;
      border-radius: 100%;
      background-color: @bg-alt;
      text-color: @foreground;
    }
    button {
      padding: 2px;
      border-radius: 100%;
    }
    element {
      spacing: 2px;
      padding: 2px;
      border-radius: 100%;
    }
    textbox {
      padding: 12px;
      border-radius: 100%;
    }
    error-message {
      border-radius: 0px;
    }
  '';
}
