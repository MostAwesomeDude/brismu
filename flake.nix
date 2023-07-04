{
  description = "Lojban notes";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    zaha.url = "github:MostAwesomeDude/zaha";
  };

  outputs = { self, nixpkgs, flake-utils, zaha }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        z = zaha.packages.${system}.default;
        brismu = pkgs.stdenv.mkDerivation {
          name = "brismu";
          version = "0.0.1";

          src = ./.;

          buildInputs = with pkgs; [
            graphviz jq
            metamath
            mdbook mdbook-graphviz mdbook-linkcheck
          ];

          buildPhase = ''
            make
            ${z}/bin/zaha union ${z}/share/jbobau/danlu/*.png
            ${z}/bin/zaha dot latest.png > danlu.dot
            mdbook build
          '';

          installPhase = ''
            mkdir -p $out/share/
            cp -r book/ $out/share/
          '';
        };
      in {
        packages = {
          default = brismu;
        };
        devShells.default = pkgs.mkShell {
          name = "brismu-env";
          packages = with pkgs; [ rlwrap ] ++ brismu.buildInputs;
        };
      }
    );
}
