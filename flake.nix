{
  description = "Generative agent research";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        brismu = pkgs.stdenv.mkDerivation {
          name = "brismu";
          version = "0.0.1";

          src = ./.;

          buildInputs = with pkgs; [
            graphviz jq
            mdbook mdbook-graphviz mdbook-linkcheck
          ];

          buildPhase = ''
            make
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
          packages = brismu.buildInputs;
        };
      }
    );
}
