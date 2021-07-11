with import <nixpkgs> {};

buildGoModule rec {
  pname = "sem";
  version = "0.20.1";

  goPackagePath = "github.com/semaphoreci/cli";

  src = fetchFromGitHub {
    owner = "semaphoreci";
    repo = "cli";
    rev = "v${version}";
    sha256 = "0dqpkiask7zih07capzskfxhln1pwn92ai7pnrf8ldywp2xxx107";
  };

  modSha256 = "1180fv3jqBBqb557il84zk1zmk0wy98qcjjrxp0z6kyk9c5qlb03cp";
  subPackages = [ "." ];
}
