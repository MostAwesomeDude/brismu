{
  description = "Lojban notes";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    zaha = {
      url = "github:MostAwesomeDude/zaha";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flake-utils, zaha }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        z = zaha.packages.${system}.default;
        cmavo = pkgs.fetchurl {
          url = "https://lojban.org/publications/wordlists/cmavo.txt";
          sha256 = "00k4g4b7w1c8fbsh6d7bd02vpybbr3rpjksfrz95vwrz3zb18i2l";
        };
        gismu = pkgs.fetchurl {
          url = "https://lojban.org/publications/wordlists/gismu.txt";
          sha256 = "1dym3m76kaya8jmdqy6v2v37iykzcas36rym2wkx0ni69zzlrz7j";
        };
        brismu = pkgs.stdenv.mkDerivation {
          name = "brismu";
          version = "0.0.1";

          src = ./.;

          buildInputs = with pkgs; [
            graphviz python3
            metamath
            mdbook mdbook-graphviz mdbook-linkcheck
          ];

          buildPhase = ''
            # Generate DAGs.
            ${z}/bin/zaha union ${z}/share/jbobau/danlu/*.png
            ${z}/bin/zaha dot latest.png > danlu.dot

            ${z}/bin/zaha dot ${z}/share/jbobau/danlu/mlatu.png > mlatu.dot
            ${z}/bin/zaha dot ${z}/share/jbobau/nu/nu.png > nu.dot
            ${z}/bin/zaha dot ${z}/share/jbobau/nu/suhu.png > suhu.dot

            # Generate ontology axioms from zaha DAGs.
            ${z}/bin/zaha edges latest.png > edges1.json
            ${z}/bin/zaha edges ${z}/share/jbobau/spati.png > edges2.json
            ${pkgs.jq}/bin/jq -s '.[0] * .[1]' edges{1,2}.json > edges.json
            python3 gen-ax.py edges.json classes.json mm/jbobau.mm

            # Augment valsi listing with baseline data.
            cp ${cmavo} cmavo.txt
            cp ${gismu} gismu.txt
            python3 gen-class.py > gen-valsi-class.json

            # Generate tables and posets from valsi listings.
            python3 gen.py coverage > src/coverage.md
            python3 gen.py dependencies > dependencies.dot
            python3 gen.py vlaste > src/vlaste-table.md
            python3 gen.py metavars > src/metavar-table.md

            mdbook build

            pushd mm/
            echo -e 'show statement * /html\nq' | metamath jbobau.mm
            echo -e 'write theorem_list\nq' | metamath jbobau.mm
            echo -e 'write bibliography mmbiblio.html\nq' | metamath jbobau.mm
            sed -i -e 's,iso-8859-1,utf-8,' *.html
            popd
          '';

          installPhase = ''
            mkdir -p $out/share/
            cp -r mm/* $out/share/
            cp -r book/* $out/share/
          '';
        };
      in {
        packages = {
          default = brismu;
        };
        devShells.default = pkgs.mkShell {
          name = "brismu-env";
          packages = with pkgs; [ keychain rlwrap ] ++ brismu.buildInputs;
        };
      }
    );
}
