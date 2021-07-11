{ pkgs, ... }:
let
  inherit (pkgs) ghc;
in
{
  environment.systemPackages = [
    (ghc.withHoogle
      (self: with self; [
        Cabal
        cabal2nix
        cabal-install
        implicit-hie
        hie-bios
        haskell-language-server # caused segfault?
	brittany
        stack
	cassava
	lens-aeson
	req
	turtle
	raw-strings-qq
	neat-interpolation
	servant-serf
	witch
      ])
    )
  ];

}


