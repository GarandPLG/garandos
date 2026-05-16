{
  lib,
  appimageTools,
  fetchurl,
}: let
  pname = "helium";
  version = "0.12.3.1";

  src = fetchurl {
    url = "https://github.com/imputnet/helium-linux/releases/download/${version}/helium-${version}-x86_64.AppImage";
    sha256 = "sha256-VnOhzhAulvFNBB/0AD1d+K/TzfFL9Zwtk/vcm5vWl+I=";
  };
  appimageContents = appimageTools.extract {inherit pname version src;};

  iconSize = "256x256";
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
      description = "Helium browser";
      homepage = "https://github.com/imputnet/helium";
      license = licenses.agpl3Plus;
      platforms = ["x86_64-linux"];
      sourceProvenance = with lib.sourceTypes; [binaryNativeCode];
      maintainers = with lib.maintainers; [garand_plg];
    };
  }
# https://github.com/imputnet/helium-linux/releases/download/0.11.7.1/helium-0.11.7.1-x86_64.AppImage

