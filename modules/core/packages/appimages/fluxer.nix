{
  lib,
  appimageTools,
  fetchurl,
}: let
  pname = "fluxer";
  version = "canary";
  hash = "sha256-GdoBK+Z/d2quEIY8INM4IQy5tzzIBBM+3CgJXQn0qAw=";

  src = fetchurl {
    url = "https://api.fluxer.app/dl/desktop/stable/linux/x64/latest/appimage";
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
      description = "Fluxer desktop app";
      homepage = "https://github.com/fluxerapp/fluxer";
      license = licenses.agpl3Only;
      platforms = ["x86_64-linux"];
      sourceProvenance = with lib.sourceTypes; [binaryNativeCode];
      maintainers = with lib.maintainers; [garand_plg];
    };
  }
