{pkgs}:
pkgs.writeShellScriptBin "restart-noctalia" ''
  noctalia-shell kill
  sleep 1.5
  noctalia-shell -d
''
