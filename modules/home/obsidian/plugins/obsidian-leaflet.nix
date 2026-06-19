{pkgs, ...}:
pkgs.stdenv.mkDerivation rec {
  pname = "obsidian-leaflet";
  version = "6.0.5";

  src = pkgs.fetchzip {
    url = "https://github.com/javalent/${pname}/releases/download/${version}/${pname}-${version}.zip";
    hash = "sha256-RBogsPElRdZQD9UvwdxfB2X1gN5UY1VmbyYkK07GLFg=";
  };

  installPhase = ''
    mkdir -p $out
    cp main.js manifest.json $out/
    cp styles.css $out/ 2>/dev/null || true
  '';
}
