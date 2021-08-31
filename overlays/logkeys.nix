final: prev: {
  logkeys = prev.logkeys.overrideAttrs (old: {
    version = "2539ccb89e20a3fbdeaa186f62e54719602a7143";
    src = prev.fetchFromGitHub {
      owner = "kernc";
      repo = "logkeys";
      rev = "2539ccb89e20a3fbdeaa186f62e54719602a7143";
      sha256 = "sha256-PghONBbCfELyfPVYdHSg6rcvUBTlTPFJS7buFbzYrbM=";
    };
  });
}

