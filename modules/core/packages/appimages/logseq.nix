{
  lib,
  appimageTools,
  fetchurl,
}: let
  pname = "logseq";
  version = "0.10.15";
  hash = "sha256-i5EQUvSW1ix+8NT8nCs6mGH2B9xF7G4mB7vBhDJ7JdE=";

  src = fetchurl {
    url = "https://github.com/logseq/logseq/releases/download/${version}/Logseq-linux-x64-${version}.AppImage";
    sha256 = hash;
  };
  appimageContents = appimageTools.extract {inherit pname version src;};

  iconSize = "512x512";
in
  appimageTools.wrapType2 {
    inherit pname version src;

    extraInstallCommands = ''
      # mv $out/bin/${pname}-${version} $out/bin/${pname}
      install -m 444 -D ${appimageContents}/${pname}.desktop $out/share/applications/${pname}.desktop
      install -m 444 -D ${appimageContents}/usr/share/icons/hicolor/${iconSize}/apps/${pname}.png \
        $out/share/icons/hicolor/${iconSize}/apps/${pname}.png
      substituteInPlace $out/share/applications/${pname}.desktop \
        --replace-fail 'Exec=AppRun' 'Exec=${pname}'
    '';

    meta = with lib; {
      description = "Logseq";
      homepage = "https://github.com/logseq/logseq";
      license = licenses.gpl3;
      platforms = ["x86_64-linux"];
      sourceProvenance = with lib.sourceTypes; [binaryNativeCode];
      maintainers = with lib.maintainers; [garand_plg];
    };
  }
# https://github.com/logseq/logseq/releases/download/0.10.15/Logseq-linux-x64-0.10.15.AppImage

