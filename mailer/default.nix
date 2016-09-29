{ pkgs ? import <nixpkgs> {}
, TEMPLATE_SUBJECT
, TEMPLATE_HEADER
, TEMPLATE_FOOTER
, FIREBASE
, EMAILS_ORDER
, EMAILS_ARCHIVE
, AWS_SOURCE_EMAIL
, AWS_REGION
, AWS_KEY_ID
, AWS_KEY_SECRET
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
  tarball = pkgs.runCommand "myfood-mailer-1.0.0.tgz" { buildInputs = [ pkgs.nodejs ]; } ''
    mv `HOME=$PWD npm pack ${src}` $out
  '';
  build = nodePackages.buildNodePackage {
    name = "myfood-mailer-1.0.0";
    src = [ tarball ];
    buildInputs = nodePackages.nativeDeps."myfood-mailer" or [];
    deps = [ nodePackages.by-spec."aws-sdk"."^2.6.5" nodePackages.by-spec."nodemailer"."^1.11.0" nodePackages.by-spec."q"."^1.4.1" ];
    peerDependencies = [];
    postInstall = ''
      cd $out/lib/node_modules/myfood-mailer
      cat > config.js <<EOF
        module.exports = {
          TEMPLATE: {
            SUBJECT: "${TEMPLATE_SUBJECT}",
            HEADER: "${TEMPLATE_HEADER}",
            FOOTER: "${TEMPLATE_FOOTER}",
          },
          FIREBASE: "${FIREBASE}",
          EMAILS: {
            ORDER: "${EMAILS_ORDER}",
            ARCHIVE: "${EMAILS_ARCHIVE}"
          },
          AWS: {
            "sourceEmail": "${AWS_SOURCE_EMAIL}",
            "accessKeyId": "${AWS_KEY_ID}",
            "secretAccessKey": "${AWS_KEY_SECRET}",
            "region": "${AWS_REGION}"
          }
        }
      EOF
    '';
  };
}
