{
  nixpkgs ? import <nixpkgs> {}
}:

with nixpkgs;

stdenv.mkDerivation {
  name = "my-app";

  src = ./.;

  buildInputs = [
    boost
    poco
  ];

  nativeBuildInputs = [
    cmake
  ];

  installPhase = ''
    mkdir -p $out/bin
    cp waifu $out/bin/
  '';

  PORT = 10000;
}
