{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = with pkgs; [ gnumake pkg-config fontconfig
                               xorg.libXft xorg.libXext xorg.libXcursor
                               ncurses git ];
}
