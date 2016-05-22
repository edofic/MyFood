with import <nixpkgs> {};
buildPythonPackage rec {
  name = "myfood-receiver";
  version = "0.1";
  src = ./.;
  propagatedBuildInputs = [ python27Packages.requests2 ];
}
