{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    naersk.url = "github:nix-community/naersk/master";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils, naersk }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        naersk-lib = pkgs.callPackage naersk { };
      in
      {
        defaultPackage = naersk-lib.buildPackage ./.;
        devShell = with pkgs; mkShell {
          RUST_SRC_PATH = rustPlatform.rustLibSrc;

          nativeBuildInputs = [
            pkg-config
          ];
          
          buildInputs = [
            rustPackages.clippy
            pre-commit
            sqlx-cli
            openssl
            rustfmt
            cargo
            rustc
          ] ++ lib.optionals pkgs.stdenv.isDarwin [
            darwin.apple_sdk.frameworks.Security
            libiconv
          ];
        };
      }
    );
}
