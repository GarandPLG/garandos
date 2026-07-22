{
  lib,
  appimageTools,
  fetchurl,
}: let
  pname = "omniget";
  version = "0.7.2";
  hash = "sha256-L1h7ViMLRSsGB0TmR5ZOjXqJCF1QsYU5c24OHHGPv+4=";

  src = fetchurl {
    url = "https://github.com/tonhowtf/${pname}/releases/download/v${version}/${pname}_${version}_amd64.AppImage";
    sha256 = hash;
  };
  appimageContents = appimageTools.extract {inherit pname version src;};

  iconSize = "256x256@2";
in
  appimageTools.wrapType2 {
    inherit pname version src;

    extraInstallCommands = ''
      # mv $out/bin/${pname}-${version} $out/bin/${pname}
      install -m 444 -D ${appimageContents}/${pname}.desktop $out/share/applications/${pname}.desktop
      install -m 444 -D ${appimageContents}/usr/share/icons/hicolor/${iconSize}/apps/${pname}.png \
        $out/share/icons/hicolor/${iconSize}/apps/${pname}.png
      # substituteInPlace $out/share/applications/${pname}.desktop \
      #   --replace-fail 'Exec=AppRun' 'Exec=${pname}'
    '';

    meta = with lib; {
      description = "Download Udemy courses, YouTube, music, books, and 1,800+ sites in one app. No terminal.";
      homepage = "https://github.com/tonhowtf/omniget";
      license = licenses.gpl3;
      platforms = ["x86_64-linux"];
      sourceProvenance = with lib.sourceTypes; [binaryNativeCode];
      maintainers = with lib.maintainers; [garand_plg];
    };
  }
