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
      in {
        packages = {
          default = pkgs.stdenv.mkDerivation {
            name = "brismu";
            version = "0.0.1";

            src = ./.;

            buildInputs = with pkgs; [
              jq graphviz
            ];

            installPhase = ''
              mkdir -p $out/share/
              cp dependencies.png $out/share/
            '';
          };
        };
        devShells.default = pkgs.mkShell {
          name = "brismu-env";
          packages = with pkgs; [
          ];
        };
      }
    );
}
