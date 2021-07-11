{ stdenv, pkgs, lib }:

let
  sql-file = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/pthom/northwind_psql/c1035fc5b5dfa45f164a7bc4a1632656f0025642/northwind.sql";
    sha256 = "1dk9x2hfikw2xpnl2v3j5r8k2cc32srldg2z7c2z20m17aamykpp";
  };
in
stdenv.mkDerivation {
  pname = "northwind-sql";
  version = "0.0.1";
  builder = pkgs.writeText "builder.sh" ''
  . $stdenv/setup
  mkdir -pv $out/share/
  cp ${sql-file} $out/share/northwind.sql
  '';
  meta = with lib; {
    description = "the microsoft northwind db";
    homepage = "https://github.com/pthom/northwind_psql";
    platforms = platforms.all;
  };
}


# ✖1 ❯ sudo nix shell ".#nixosConfigurations.razer.config.system.build.toplevel" -c switch-to-configuration switch
# warning: Git tree '/home/cody/devos' is dirty
# error: builder for '/nix/store/8l32lk9bcldyky3liq0ad4l5fpmfg8ch-northwind-sql-0.0.1.drv' failed with exit code 126;
#        last 1 log lines:
#        > /nix/store/wq675zzql6f0rwrvkddmj000ygn1z43k-northwind.sql: line 1: /nix/store/ga79g4fyspf5iwbcg57aisy5x2mlpm16-northwind.sql: Permission denied
#        For full logs, run 'nix log /nix/store/8l32lk9bcldyky3liq0ad4l5fpmfg8ch-northwind-sql-0.0.1.drv'.
# error: 1 dependencies of derivation '/nix/store/jwwpagn9bj0s6cagadqkwcif6izsh104-system-path.drv' failed to build
# error: 1 dependencies of derivation '/nix/store/q1x30jaiw8pz8vr5abqbp96gjgrmkv4p-nixos-system-razer-21.05.20210222.c7d0dbe.drv' failed to build
