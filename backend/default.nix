{ buildPythonPackage
, python27Packages

, srcDir ? ./.
, AUTH_SENDER
, POST_URL
, PUT_NAME_URL
, URL_PREFIX
}:

buildPythonPackage rec {
  name = "myfood-receiver";
  version = "0.1";
  src = ./.;
  propagatedBuildInputs = [ python27Packages.requests2 ];
  preBuild = ''
    cat > myfood/config.py <<EOF
    AUTH_SENDER = "${AUTH_SENDER}"
    POST_URL = "${POST_URL}"
    PUT_NAME_URL = "${PUT_NAME_URL}"
    URL_PREFIX = "${URL_PREFIX}"
    EOF
  '';
}
