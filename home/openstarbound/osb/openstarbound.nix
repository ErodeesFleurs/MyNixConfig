{
  lib,
  stdenv,
  fetchurl,
  autoPatchelfHook,
  makeWrapper,
  unzip,
  libGL,
  libGLU,
  libSM,
  libICE,
  libX11,
  libXext,
  libgcc,
  ...
}:

let
  libraries = [
    libGL
    libGLU
    libSM
    libICE
    libX11
    libXext
    libgcc
  ];
in

stdenv.mkDerivation rec {
  name = "OpenStarbound-${version}";
  version = "Nightly";
  src = fetchurl {
    url = "https://nightly.link/OpenStarbound/OpenStarbound/workflows/build/main/OpenStarbound-Linux-Client.zip";
    sha256 = "sha256-KARChrAZHrVPcGZb4Mkt6oCfQb5V/T+wU/8Qi/L8zHQ=";
  };

  nativeBuildInputs = [
    autoPatchelfHook
    makeWrapper
    unzip

    # Required libraries
    libGL
    libGLU
    libSM
    libICE
    libX11
    libXext
    libgcc
  ];

  unpackPhase = ''
    # Unzip the downloaded file
    mkdir -p $TMPDIR/build
    unzip $src -d $TMPDIR/build

    # Extract client.tar
    tar -xvf $TMPDIR/build/client.tar -C $TMPDIR/build
  '';
  installPhase = ''
    mkdir -p $out/linux
    mkdir -p $out/assets
    mkdir -p $out/bin

    rm -rf $TMPDIR/build/client_distribution/linux/sbinit.config

    cp -r $TMPDIR/build/client_distribution/linux $out
    cp -r $TMPDIR/build/client_distribution/assets $out

    cat << EOF > $out/bin/sbinit.config
      {
        "assetDirectories": [
          "\$HOME/.local/share/Steam/steamapps/common/Starbound/assets",
          "\$HOME/.local/share/OpenStarbound/mods",
          "$out/assets",
          "$out/linux/assets"
        ],
        "storageDirectory": "\$HOME/.local/share/OpenStarbound/storage",
        "logDirectory": "\$HOME/.local/share/OpenStarbound/logs"
      }
    EOF

    makeWrapper $out/linux/starbound $out/bin/openstarbound \
      --prefix LD_LIBRARY_PATH : ${lib.makeLibraryPath libraries}
  '';

  meta = {
    description = "OpenStarbound is a free open-source Starbound server implementation";
    homepage = "https://github.com/OpenStarbound/OpenStarbound";
    platforms = [ "x86_64-linux" ];
    mainProgram = "openstarbound";
  };
}
