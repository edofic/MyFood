{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."addressparser"."^0.3.2" =
    self.by-version."addressparser"."0.3.2";
  by-version."addressparser"."0.3.2" = self.buildNodePackage {
    name = "addressparser-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/addressparser/-/addressparser-0.3.2.tgz";
      name = "addressparser-0.3.2.tgz";
      sha1 = "59873f35e8fcf6c7361c10239261d76e15348bb2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."aws-sdk"."^2.6.5" =
    self.by-version."aws-sdk"."2.6.5";
  by-version."aws-sdk"."2.6.5" = self.buildNodePackage {
    name = "aws-sdk-2.6.5";
    version = "2.6.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/aws-sdk/-/aws-sdk-2.6.5.tgz";
      name = "aws-sdk-2.6.5.tgz";
      sha1 = "a9d1f644a2b79716cc096778f7df26da1dc70c53";
    };
    deps = {
      "buffer-4.9.1" = self.by-version."buffer"."4.9.1";
      "crypto-browserify-1.0.9" = self.by-version."crypto-browserify"."1.0.9";
      "jmespath-0.15.0" = self.by-version."jmespath"."0.15.0";
      "querystring-0.2.0" = self.by-version."querystring"."0.2.0";
      "sax-1.1.5" = self.by-version."sax"."1.1.5";
      "url-0.10.3" = self.by-version."url"."0.10.3";
      "xml2js-0.4.15" = self.by-version."xml2js"."0.4.15";
      "xmlbuilder-2.6.2" = self.by-version."xmlbuilder"."2.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "aws-sdk" = self.by-version."aws-sdk"."2.6.5";
  by-spec."base64-js"."^1.0.2" =
    self.by-version."base64-js"."1.2.0";
  by-version."base64-js"."1.2.0" = self.buildNodePackage {
    name = "base64-js-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/base64-js/-/base64-js-1.2.0.tgz";
      name = "base64-js-1.2.0.tgz";
      sha1 = "a39992d723584811982be5e290bb6a53d86700f1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer"."4.9.1" =
    self.by-version."buffer"."4.9.1";
  by-version."buffer"."4.9.1" = self.buildNodePackage {
    name = "buffer-4.9.1";
    version = "4.9.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/buffer/-/buffer-4.9.1.tgz";
      name = "buffer-4.9.1.tgz";
      sha1 = "6d1bb601b07a4efced97094132093027c95bc298";
    };
    deps = {
      "base64-js-1.2.0" = self.by-version."base64-js"."1.2.0";
      "ieee754-1.1.6" = self.by-version."ieee754"."1.1.6";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buildmail"."^2.0.0" =
    self.by-version."buildmail"."2.0.0";
  by-version."buildmail"."2.0.0" = self.buildNodePackage {
    name = "buildmail-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/buildmail/-/buildmail-2.0.0.tgz";
      name = "buildmail-2.0.0.tgz";
      sha1 = "f0b7b0a59e9a4a1b5066bbfa051d248f3832eece";
    };
    deps = {
      "addressparser-0.3.2" = self.by-version."addressparser"."0.3.2";
      "libbase64-0.1.0" = self.by-version."libbase64"."0.1.0";
      "libmime-1.2.0" = self.by-version."libmime"."1.2.0";
      "libqp-1.1.0" = self.by-version."libqp"."1.1.0";
      "needle-0.10.0" = self.by-version."needle"."0.10.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."clone"."^1.0.2" =
    self.by-version."clone"."1.0.2";
  by-version."clone"."1.0.2" = self.buildNodePackage {
    name = "clone-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/clone/-/clone-1.0.2.tgz";
      name = "clone-1.0.2.tgz";
      sha1 = "260b7a99ebb1edfe247538175f783243cb19d149";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."crypto-browserify"."1.0.9" =
    self.by-version."crypto-browserify"."1.0.9";
  by-version."crypto-browserify"."1.0.9" = self.buildNodePackage {
    name = "crypto-browserify-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/crypto-browserify/-/crypto-browserify-1.0.9.tgz";
      name = "crypto-browserify-1.0.9.tgz";
      sha1 = "cc5449685dfb85eb11c9828acc7cb87ab5bbfcc0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."^2.1.2" =
    self.by-version."debug"."2.2.0";
  by-version."debug"."2.2.0" = self.buildNodePackage {
    name = "debug-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
      name = "debug-2.2.0.tgz";
      sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
    };
    deps = {
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."iconv-lite"."^0.4.13" =
    self.by-version."iconv-lite"."0.4.13";
  by-version."iconv-lite"."0.4.13" = self.buildNodePackage {
    name = "iconv-lite-0.4.13";
    version = "0.4.13";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.13.tgz";
      name = "iconv-lite-0.4.13.tgz";
      sha1 = "1f88aba4ab0b1508e8312acc39345f36e992e2f2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."iconv-lite"."^0.4.4" =
    self.by-version."iconv-lite"."0.4.13";
  by-spec."ieee754"."^1.1.4" =
    self.by-version."ieee754"."1.1.6";
  by-version."ieee754"."1.1.6" = self.buildNodePackage {
    name = "ieee754-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ieee754/-/ieee754-1.1.6.tgz";
      name = "ieee754-1.1.6.tgz";
      sha1 = "2e1013219c6d6712973ec54d981ec19e5579de97";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isarray"."^1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-version."isarray"."1.0.0" = self.buildNodePackage {
    name = "isarray-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
      name = "isarray-1.0.0.tgz";
      sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jmespath"."0.15.0" =
    self.by-version."jmespath"."0.15.0";
  by-version."jmespath"."0.15.0" = self.buildNodePackage {
    name = "jmespath-0.15.0";
    version = "0.15.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jmespath/-/jmespath-0.15.0.tgz";
      name = "jmespath-0.15.0.tgz";
      sha1 = "a3f222a9aae9f966f5d27c796510e28091764217";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."libbase64"."^0.1.0" =
    self.by-version."libbase64"."0.1.0";
  by-version."libbase64"."0.1.0" = self.buildNodePackage {
    name = "libbase64-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/libbase64/-/libbase64-0.1.0.tgz";
      name = "libbase64-0.1.0.tgz";
      sha1 = "62351a839563ac5ff5bd26f12f60e9830bb751e6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."libmime"."^1.2.0" =
    self.by-version."libmime"."1.2.0";
  by-version."libmime"."1.2.0" = self.buildNodePackage {
    name = "libmime-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/libmime/-/libmime-1.2.0.tgz";
      name = "libmime-1.2.0.tgz";
      sha1 = "8d84b4f3b225b3704410236ef494906436ba742b";
    };
    deps = {
      "iconv-lite-0.4.13" = self.by-version."iconv-lite"."0.4.13";
      "libbase64-0.1.0" = self.by-version."libbase64"."0.1.0";
      "libqp-1.1.0" = self.by-version."libqp"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."libqp"."^1.1.0" =
    self.by-version."libqp"."1.1.0";
  by-version."libqp"."1.1.0" = self.buildNodePackage {
    name = "libqp-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/libqp/-/libqp-1.1.0.tgz";
      name = "libqp-1.1.0.tgz";
      sha1 = "f5e6e06ad74b794fb5b5b66988bf728ef1dedbe8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."~3.5.0" =
    self.by-version."lodash"."3.5.0";
  by-version."lodash"."3.5.0" = self.buildNodePackage {
    name = "lodash-3.5.0";
    version = "3.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash/-/lodash-3.5.0.tgz";
      name = "lodash-3.5.0.tgz";
      sha1 = "19bb3f4d51278f0b8c818ed145c74ecf9fe40e6d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mailcomposer"."^2.1.0" =
    self.by-version."mailcomposer"."2.1.0";
  by-version."mailcomposer"."2.1.0" = self.buildNodePackage {
    name = "mailcomposer-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mailcomposer/-/mailcomposer-2.1.0.tgz";
      name = "mailcomposer-2.1.0.tgz";
      sha1 = "a6531822899614fee899c92226d81e2b9cbb183d";
    };
    deps = {
      "buildmail-2.0.0" = self.by-version."buildmail"."2.0.0";
      "libmime-1.2.0" = self.by-version."libmime"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = self.buildNodePackage {
    name = "ms-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
      name = "ms-0.7.1.tgz";
      sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."needle"."^0.10.0" =
    self.by-version."needle"."0.10.0";
  by-version."needle"."0.10.0" = self.buildNodePackage {
    name = "needle-0.10.0";
    version = "0.10.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/needle/-/needle-0.10.0.tgz";
      name = "needle-0.10.0.tgz";
      sha1 = "16a24d63f2a61152eb74cce1d12af85c507577d4";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "iconv-lite-0.4.13" = self.by-version."iconv-lite"."0.4.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."needle"."^0.11.0" =
    self.by-version."needle"."0.11.0";
  by-version."needle"."0.11.0" = self.buildNodePackage {
    name = "needle-0.11.0";
    version = "0.11.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/needle/-/needle-0.11.0.tgz";
      name = "needle-0.11.0.tgz";
      sha1 = "02a71b008eaf7d55ae89fb9fd7685b7b88d7bc29";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "iconv-lite-0.4.13" = self.by-version."iconv-lite"."0.4.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nodemailer"."^1.11.0" =
    self.by-version."nodemailer"."1.11.0";
  by-version."nodemailer"."1.11.0" = self.buildNodePackage {
    name = "nodemailer-1.11.0";
    version = "1.11.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/nodemailer/-/nodemailer-1.11.0.tgz";
      name = "nodemailer-1.11.0.tgz";
      sha1 = "4e69cb39b03015b1d1ef0c78a815412b9e976f79";
    };
    deps = {
      "libmime-1.2.0" = self.by-version."libmime"."1.2.0";
      "mailcomposer-2.1.0" = self.by-version."mailcomposer"."2.1.0";
      "needle-0.11.0" = self.by-version."needle"."0.11.0";
      "nodemailer-direct-transport-1.1.0" = self.by-version."nodemailer-direct-transport"."1.1.0";
      "nodemailer-smtp-transport-1.1.0" = self.by-version."nodemailer-smtp-transport"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "nodemailer" = self.by-version."nodemailer"."1.11.0";
  by-spec."nodemailer-direct-transport"."^1.1.0" =
    self.by-version."nodemailer-direct-transport"."1.1.0";
  by-version."nodemailer-direct-transport"."1.1.0" = self.buildNodePackage {
    name = "nodemailer-direct-transport-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/nodemailer-direct-transport/-/nodemailer-direct-transport-1.1.0.tgz";
      name = "nodemailer-direct-transport-1.1.0.tgz";
      sha1 = "a2f78708ee6f16ea0573fc82949d138ff172f624";
    };
    deps = {
      "smtp-connection-1.3.8" = self.by-version."smtp-connection"."1.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nodemailer-smtp-transport"."^1.1.0" =
    self.by-version."nodemailer-smtp-transport"."1.1.0";
  by-version."nodemailer-smtp-transport"."1.1.0" = self.buildNodePackage {
    name = "nodemailer-smtp-transport-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/nodemailer-smtp-transport/-/nodemailer-smtp-transport-1.1.0.tgz";
      name = "nodemailer-smtp-transport-1.1.0.tgz";
      sha1 = "e6c37f31885ab3080e7ded3cf528c4ad7e691398";
    };
    deps = {
      "clone-1.0.2" = self.by-version."clone"."1.0.2";
      "nodemailer-wellknown-0.1.10" = self.by-version."nodemailer-wellknown"."0.1.10";
      "smtp-connection-1.3.8" = self.by-version."smtp-connection"."1.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nodemailer-wellknown"."^0.1.7" =
    self.by-version."nodemailer-wellknown"."0.1.10";
  by-version."nodemailer-wellknown"."0.1.10" = self.buildNodePackage {
    name = "nodemailer-wellknown-0.1.10";
    version = "0.1.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/nodemailer-wellknown/-/nodemailer-wellknown-0.1.10.tgz";
      name = "nodemailer-wellknown-0.1.10.tgz";
      sha1 = "586db8101db30cb4438eb546737a41aad0cf13d5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."punycode"."1.3.2" =
    self.by-version."punycode"."1.3.2";
  by-version."punycode"."1.3.2" = self.buildNodePackage {
    name = "punycode-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/punycode/-/punycode-1.3.2.tgz";
      name = "punycode-1.3.2.tgz";
      sha1 = "9653a036fb7c1ee42342f2325cceefea3926c48d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."q"."^1.4.1" =
    self.by-version."q"."1.4.1";
  by-version."q"."1.4.1" = self.buildNodePackage {
    name = "q-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/q/-/q-1.4.1.tgz";
      name = "q-1.4.1.tgz";
      sha1 = "55705bcd93c5f3673530c2c2cbc0c2b3addc286e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "q" = self.by-version."q"."1.4.1";
  by-spec."querystring"."0.2.0" =
    self.by-version."querystring"."0.2.0";
  by-version."querystring"."0.2.0" = self.buildNodePackage {
    name = "querystring-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/querystring/-/querystring-0.2.0.tgz";
      name = "querystring-0.2.0.tgz";
      sha1 = "b209849203bb25df820da756e747005878521620";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sax"."1.1.5" =
    self.by-version."sax"."1.1.5";
  by-version."sax"."1.1.5" = self.buildNodePackage {
    name = "sax-1.1.5";
    version = "1.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sax/-/sax-1.1.5.tgz";
      name = "sax-1.1.5.tgz";
      sha1 = "1da50a8d00cdecd59405659f5ff85349fe773743";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sax".">=0.6.0" =
    self.by-version."sax"."1.2.1";
  by-version."sax"."1.2.1" = self.buildNodePackage {
    name = "sax-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sax/-/sax-1.2.1.tgz";
      name = "sax-1.2.1.tgz";
      sha1 = "7b8e656190b228e81a66aea748480d828cd2d37a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."smtp-connection"."^1.3.1" =
    self.by-version."smtp-connection"."1.3.8";
  by-version."smtp-connection"."1.3.8" = self.buildNodePackage {
    name = "smtp-connection-1.3.8";
    version = "1.3.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/smtp-connection/-/smtp-connection-1.3.8.tgz";
      name = "smtp-connection-1.3.8.tgz";
      sha1 = "55832c2160cfb3086e1dcd87fd1c19fa61b7f536";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."smtp-connection"."^1.3.7" =
    self.by-version."smtp-connection"."1.3.8";
  by-spec."url"."0.10.3" =
    self.by-version."url"."0.10.3";
  by-version."url"."0.10.3" = self.buildNodePackage {
    name = "url-0.10.3";
    version = "0.10.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/url/-/url-0.10.3.tgz";
      name = "url-0.10.3.tgz";
      sha1 = "021e4d9c7705f21bbf37d03ceb58767402774c64";
    };
    deps = {
      "punycode-1.3.2" = self.by-version."punycode"."1.3.2";
      "querystring-0.2.0" = self.by-version."querystring"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xml2js"."0.4.15" =
    self.by-version."xml2js"."0.4.15";
  by-version."xml2js"."0.4.15" = self.buildNodePackage {
    name = "xml2js-0.4.15";
    version = "0.4.15";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/xml2js/-/xml2js-0.4.15.tgz";
      name = "xml2js-0.4.15.tgz";
      sha1 = "95cd03ff2dd144ec28bc6273bf2b2890c581ad0c";
    };
    deps = {
      "sax-1.2.1" = self.by-version."sax"."1.2.1";
      "xmlbuilder-8.2.2" = self.by-version."xmlbuilder"."8.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xmlbuilder"."2.6.2" =
    self.by-version."xmlbuilder"."2.6.2";
  by-version."xmlbuilder"."2.6.2" = self.buildNodePackage {
    name = "xmlbuilder-2.6.2";
    version = "2.6.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/xmlbuilder/-/xmlbuilder-2.6.2.tgz";
      name = "xmlbuilder-2.6.2.tgz";
      sha1 = "f916f6d10d45dc171b1be2e6e673fb6e0cc35d0a";
    };
    deps = {
      "lodash-3.5.0" = self.by-version."lodash"."3.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xmlbuilder".">=2.4.6" =
    self.by-version."xmlbuilder"."8.2.2";
  by-version."xmlbuilder"."8.2.2" = self.buildNodePackage {
    name = "xmlbuilder-8.2.2";
    version = "8.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/xmlbuilder/-/xmlbuilder-8.2.2.tgz";
      name = "xmlbuilder-8.2.2.tgz";
      sha1 = "69248673410b4ba42e1a6136551d2922335aa773";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
}
