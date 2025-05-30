{ pkgs ? import <nixpkgs> {} }:

let 
  sfdnormalize = pkgs.python313Packages.buildPythonPackage rec {
    pname = "sfdnormalize";
    version = "1.x.x";

    src = fetchTarball {
      url = "https://github.com/alerque/sfdnormalize/tarball/905284d04cbe651d6f5e08075c01198281d7d3f3";
      sha256 = "1qsyhsxckmphrx5alyg964ypg91waij7drddv3ybqbsvy6pqmivp";
    };
  };
in
  pkgs.mkShell {
    nativeBuildInputs = [
      pkgs.python313
      sfdnormalize
      pkgs.fontforge-gtk
      pkgs.ttfautohint
      pkgs.woff2
      pkgs.nerd-font-patcher
      pkgs.curl
    ];
  }
