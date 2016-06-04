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
}
