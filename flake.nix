{
  description = "Prelude replacement, external packages only, incl. tests";

  inputs = {
    nixpkgs.url     = "github:nixos/nixpkgs/be44bf67"; # nixos-22.05 2022-10-15
    build-utils.url = "github:sixears/flake-build-utils/r1.0.0.12";
    base0.url       = "github:sixears/base0/r0.0.4.8";
  };

  outputs = { self, nixpkgs, build-utils, base0 }:
    build-utils.lib.hOutputs self nixpkgs "base0t" {
      deps = { inherit base0; };
      ghc  = p: p.ghc8107; # for tfmt

      callPackage = { mkDerivation, lib, system
                    , tasty, tasty-hunit }:
        let
          pkg = build-utils.lib.flake-def-pkg system;
        in
          mkDerivation {
            pname = "base0t";
            version = "0.0.1.9";
            src = ./.;
            libraryHaskellDepends = [ (pkg base0) tasty tasty-hunit ];
            description = "Prelude replacement, external packages only, incl. tests";
            license = lib.licenses.mit;
          };
    };
}
