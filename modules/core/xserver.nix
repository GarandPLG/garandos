{keyboardLayout, ...}: {
  services.xserver = {
    enable = true;
    xkb = {
      layout = "${keyboardLayout}";
      variant = "";
    };
  };
}
