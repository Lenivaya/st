{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    gnumake
    pkg-config
    fontconfig
    harfbuzz
    xorg.libXft
    xorg.libXext
    xorg.libXcursor
    ncurses
    git
  ];
}
