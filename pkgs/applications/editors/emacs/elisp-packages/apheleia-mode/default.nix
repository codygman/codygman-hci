{ pkgs, lib, fetchFromGitHub }:

pkgs.emacsPackages.trivialBuild {
    pname = "apheleia-mode";
    packageRequires = [  ];
    src = fetchFromGitHub { # TODO treat this as a flake input
          owner = "raxod502";
          repo = "apheleia";
          rev = "876078f473cabd14129eb78d610ef2cc46ead4f1";
          sha256 = "actIWr8fXYfPWRdMTmQFvn5PiJVRFIec7cwObjsn5lY=";
    };

    # INCOMPLETE
    meta = with lib; {
      description = "to do";
      license = licenses.gpl2Plus;
      maintainers = with maintainers; [ codygman ];
      platforms = platforms.all;
    };
}
