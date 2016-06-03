{ pkgs ? import <nixpkgs> {}

, FIREBASE
, CLOSE_TIME
}:

let
  nodePackages = import "${pkgs.path}/pkgs/top-level/node-packages.nix" {
    inherit pkgs;
    inherit (pkgs) stdenv nodejs fetchurl fetchgit;
    neededNatives = [ pkgs.python ] ++ pkgs.lib.optional pkgs.stdenv.isLinux pkgs.utillinux;
    self = nodePackages;
    generated = ./gen.nix;
  };
in rec {
  src = ./.;
  tarball = pkgs.runCommand "myfood-1.0.0.tgz" { buildInputs = [ pkgs.nodejs ]; } ''
    mv `HOME=$PWD npm pack ${src}` $out
  '';
  build = nodePackages.buildNodePackage {
    name = "myfood-1.0.0";
    src = [ tarball ];
    buildInputs = nodePackages.nativeDeps."myfood" or [];
    deps = with nodePackages; [
      baconjs
      lodash
      moment
      virtual-dom

      # dev
      babel
      babel-core
      babel-loader
      babel-preset-es2015
      babel-preset-react
      webpack
    ];
    peerDependencies = [];
    postInstall = ''
      cd $out/lib/node_modules/myfood
      cat > js/config.js <<EOF
        module.exports = {
          firebase: "${FIREBASE}",
          // Close form inputs at the specified time:
          close: ${CLOSE_TIME}
        }
      EOF
      webpack
    '';
  };
}
