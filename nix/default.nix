{
  nixpkgs ? import <nixpkgs> {}
}:

with nixpkgs;

stdenv.mkDerivation {
  name = "my-app";

  src = ../src;

  buildInputs = [
    boost
    poco
  ];

  nativeBuildInputs = [
    cmake
  ];

  installPhase = ''
    mkdir -p $out/bin
    cp main $out/bin/
  '';

  PORT = 10000;
}
