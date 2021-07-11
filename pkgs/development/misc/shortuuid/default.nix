{ stdenv, pkgs, lib }:

let pythonEnv = pkgs.python3.withPackages ( ps: [ ps.shortuuid ]);
in
pkgs.writeScriptBin "shortuuid" ''
#!${pythonEnv.interpreter}
import shortuuid
print (shortuuid.uuid())
''
