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

            ${z}/bin/zaha dot ${z}/share/jbobau/danlu/mlatu.png > mlatu.dot
            ${z}/bin/zaha dot ${z}/share/jbobau/nu/nu.png > nu.dot
            ${z}/bin/zaha dot ${z}/share/jbobau/nu/suhu.png > suhu.dot

            mdbook build

            mkdir mm/
            cp jbobau.mm mm/
            pushd mm/
            echo -e 'show statement * /html\nq' | metamath jbobau.mm
            echo -e 'write theorem_list\nq' | metamath jbobau.mm
            popd
          '';

          installPhase = ''
            mkdir -p $out/share/
            cp -r book/ mm/ $out/share/
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
