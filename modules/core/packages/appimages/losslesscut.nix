{
  lib,
  appimageTools,
  fetchurl,
}: let
  pname = "losslesscut";
  version = "3.68.0";

  src = fetchurl {
    url = "https://github.com/mifi/lossless-cut/releases/download/v${version}/LosslessCut-linux-x86_64.AppImage";
    sha256 = "sha256-/d+j1/XAQOzmx7S2bVUPar/Bx130CumbzOf2sY2sCzo=";
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
      description = "Lossless cut";
      homepage = "https://github.com/mifi/lossless-cut";
      license = licenses.gpl2Only;
      platforms = ["x86_64-linux"];
      sourceProvenance = with lib.sourceTypes; [binaryNativeCode];
      maintainers = with lib.maintainers; [garand_plg];
    };
  }
# https://github.com/mifi/lossless-cut/releases/download/v3.68.0/LosslessCut-linux-x86_64.AppImage

